-- FIFO Allocation Update Script
-- This script updates the received_amount in accounting_journal_voucher_line_schedules
-- based on allocations in accounting_receipt_allocations using FIFO logic

-- Step 1: Create a temporary table to calculate cumulative allocations and schedule amounts
DROP TEMPORARY TABLE IF EXISTS temp_fifo_calculation;

CREATE TEMPORARY TABLE temp_fifo_calculation AS
WITH 
-- Get total allocated amount per journal voucher line from allocations table
allocated_amounts AS (
    SELECT 
        jv_line_id,
        SUM(CASE 
            WHEN currency = 'USD' THEN amount 
            ELSE usd 
        END) as total_allocated_usd
    FROM accounting_receipt_allocations 
    WHERE jv_line_id IS NOT NULL
    GROUP BY jv_line_id
),

-- Get schedules ordered by date (FIFO) with cumulative amounts
schedule_cumulative AS (
    SELECT 
        id,
        journal_voucher_line_id,
        schedule_date,
        schedule_amount,
        received_amount,
        -- Calculate cumulative schedule amounts up to current row (FIFO order)
        SUM(schedule_amount) OVER (
            PARTITION BY journal_voucher_line_id 
            ORDER BY schedule_date, id 
            ROWS UNBOUNDED PRECEDING
        ) as cumulative_schedule_amount,
        -- Calculate cumulative schedule amounts up to previous row
        COALESCE(
            SUM(schedule_amount) OVER (
                PARTITION BY journal_voucher_line_id 
                ORDER BY schedule_date, id 
                ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING
            ), 0
        ) as previous_cumulative_amount,
        ROW_NUMBER() OVER (
            PARTITION BY journal_voucher_line_id 
            ORDER BY schedule_date, id
        ) as schedule_order
    FROM accounting_journal_voucher_line_schedules
)

SELECT 
    sc.id,
    sc.journal_voucher_line_id,
    sc.schedule_date,
    sc.schedule_amount,
    sc.received_amount as current_received_amount,
    COALESCE(aa.total_allocated_usd, 0) as total_allocated,
    sc.cumulative_schedule_amount,
    sc.previous_cumulative_amount,
    sc.schedule_order,
    -- Calculate new received amount using FIFO logic
    CASE 
        WHEN COALESCE(aa.total_allocated_usd, 0) = 0 THEN 0
        WHEN aa.total_allocated_usd <= sc.previous_cumulative_amount THEN 0
        WHEN aa.total_allocated_usd >= sc.cumulative_schedule_amount THEN sc.schedule_amount
        ELSE GREATEST(0, aa.total_allocated_usd - sc.previous_cumulative_amount)
    END as new_received_amount
FROM schedule_cumulative sc
LEFT JOIN allocated_amounts aa ON sc.journal_voucher_line_id = aa.jv_line_id
ORDER BY sc.journal_voucher_line_id, sc.schedule_date, sc.id;

-- Step 2: Show the calculation results before updating (for verification)
SELECT 
    'BEFORE UPDATE - Calculation Preview' as status,
    journal_voucher_line_id,
    schedule_date,
    schedule_amount,
    current_received_amount,
    new_received_amount,
    total_allocated,
    schedule_order
FROM temp_fifo_calculation
ORDER BY journal_voucher_line_id, schedule_order;

-- Step 3: Update the actual table with the calculated received amounts
UPDATE accounting_journal_voucher_line_schedules ajvls
INNER JOIN temp_fifo_calculation tfc ON ajvls.id = tfc.id
SET ajvls.received_amount = tfc.new_received_amount,
    ajvls.modified_at = CURRENT_TIMESTAMP,
    ajvls.modified_by = 'FIFO_ALLOCATION_SCRIPT'
WHERE ajvls.received_amount != tfc.new_received_amount;

-- Step 4: Show summary of changes
SELECT 
    'UPDATE SUMMARY' as status,
    COUNT(*) as total_schedules_processed,
    SUM(CASE WHEN current_received_amount != new_received_amount THEN 1 ELSE 0 END) as schedules_updated,
    COUNT(DISTINCT journal_voucher_line_id) as jv_lines_affected
FROM temp_fifo_calculation;

-- Step 5: Show detailed results after update
SELECT 
    'AFTER UPDATE - Results' as status,
    ajvls.journal_voucher_line_id,
    ajvls.schedule_date,
    ajvls.schedule_amount,
    ajvls.received_amount,
    tfc.total_allocated,
    ROW_NUMBER() OVER (
        PARTITION BY ajvls.journal_voucher_line_id 
        ORDER BY ajvls.schedule_date, ajvls.id
    ) as schedule_order
FROM accounting_journal_voucher_line_schedules ajvls
INNER JOIN temp_fifo_calculation tfc ON ajvls.id = tfc.id
ORDER BY ajvls.journal_voucher_line_id, ajvls.schedule_date, ajvls.id;

-- Clean up
DROP TEMPORARY TABLE temp_fifo_calculation;