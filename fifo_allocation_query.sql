-- FIFO Allocation Matching Query
-- This query matches allocations to schedules using FIFO logic
-- For each journal voucher line, it distributes allocated amounts across schedules in chronological order

-- CTE to get cumulative amounts for schedules (ordered by schedule_date for FIFO)
WITH schedule_cumulative AS (
    SELECT 
        s.id,
        s.journal_voucher_line_id,
        s.schedule_date,
        s.schedule_amount,
        s.received_amount,
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
-- CTE to get total allocations per journal voucher line
allocation_totals AS (
    SELECT 
        jv_line_id,
        SUM(amount) AS total_allocated_amount,
        SUM(usd) AS total_allocated_usd,
        SUM(lbp) AS total_allocated_lbp
    FROM accounting_receipt_allocations
    WHERE jv_line_id IS NOT NULL
    GROUP BY jv_line_id
),
-- Calculate the FIFO-based received amount for each schedule
fifo_calculation AS (
    SELECT 
        sc.id,
        sc.journal_voucher_line_id,
        sc.schedule_date,
        sc.schedule_amount,
        sc.received_amount AS current_received_amount,
        COALESCE(at.total_allocated_amount, 0) AS total_allocated,
        COALESCE(sc.prev_cumulative_amount, 0) AS prev_cumulative,
        sc.cumulative_schedule_amount,
        -- Calculate FIFO received amount
        CASE 
            WHEN at.total_allocated_amount IS NULL THEN 0
            WHEN at.total_allocated_amount <= COALESCE(sc.prev_cumulative_amount, 0) THEN 0
            WHEN at.total_allocated_amount >= sc.cumulative_schedule_amount THEN sc.schedule_amount
            ELSE at.total_allocated_amount - COALESCE(sc.prev_cumulative_amount, 0)
        END AS calculated_received_amount
    FROM schedule_cumulative sc
    LEFT JOIN allocation_totals at ON sc.journal_voucher_line_id = at.jv_line_id
)
-- Final result
SELECT 
    id AS schedule_id,
    journal_voucher_line_id,
    schedule_date,
    schedule_amount,
    current_received_amount,
    calculated_received_amount AS fifo_received_amount,
    total_allocated,
    CASE 
        WHEN calculated_received_amount = schedule_amount THEN 'Fully Received'
        WHEN calculated_received_amount > 0 THEN 'Partially Received'
        ELSE 'Not Received'
    END AS status
FROM fifo_calculation
ORDER BY journal_voucher_line_id, schedule_date, id;

-- Example for JV LINE ID 396
-- Uncomment the WHERE clause below to filter for specific journal voucher line
-- WHERE journal_voucher_line_id = 396