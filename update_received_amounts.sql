-- Update Statement to Apply FIFO Allocation to Schedule Table
-- This query updates the received_amount field in the schedules table based on FIFO allocation

-- First, let's create a temporary table with the FIFO calculations
CREATE TEMPORARY TABLE temp_fifo_updates AS
WITH schedule_cumulative AS (
    SELECT 
        s.id,
        s.journal_voucher_line_id,
        s.schedule_date,
        s.schedule_amount,
        SUM(s.schedule_amount) OVER (
            PARTITION BY s.journal_voucher_line_id 
            ORDER BY s.schedule_date, s.id
        ) AS cumulative_schedule_amount,
        SUM(s.schedule_amount) OVER (
            PARTITION BY s.journal_voucher_line_id 
            ORDER BY s.schedule_date, s.id
            ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING
        ) AS prev_cumulative_amount
    FROM accounting_journal_voucher_line_schedules s
),
allocation_totals AS (
    SELECT 
        jv_line_id,
        SUM(amount) AS total_allocated_amount
    FROM accounting_receipt_allocations
    WHERE jv_line_id IS NOT NULL
    GROUP BY jv_line_id
)
SELECT 
    sc.id,
    CASE 
        WHEN at.total_allocated_amount IS NULL THEN 0
        WHEN at.total_allocated_amount <= COALESCE(sc.prev_cumulative_amount, 0) THEN 0
        WHEN at.total_allocated_amount >= sc.cumulative_schedule_amount THEN sc.schedule_amount
        ELSE at.total_allocated_amount - COALESCE(sc.prev_cumulative_amount, 0)
    END AS new_received_amount
FROM schedule_cumulative sc
LEFT JOIN allocation_totals at ON sc.journal_voucher_line_id = at.jv_line_id;

-- Update the schedules table
UPDATE accounting_journal_voucher_line_schedules s
INNER JOIN temp_fifo_updates t ON s.id = t.id
SET 
    s.received_amount = t.new_received_amount,
    s.modified_at = CURRENT_TIMESTAMP,
    s.modified_by = USER();

-- Clean up
DROP TEMPORARY TABLE temp_fifo_updates;

-- Verify the update for JV LINE ID 396
SELECT 
    id,
    journal_voucher_line_id,
    schedule_date,
    schedule_amount,
    received_amount,
    CASE 
        WHEN received_amount = schedule_amount THEN 'Fully Received'
        WHEN received_amount > 0 THEN 'Partially Received'
        ELSE 'Not Received'
    END AS status
FROM accounting_journal_voucher_line_schedules
WHERE journal_voucher_line_id = 396
ORDER BY schedule_date, id;