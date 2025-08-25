-- Test Example for JV LINE ID 396
-- This demonstrates how the FIFO allocation works with your example:
-- 3 schedules (160, 160, 180) with total allocation of 500

-- Step 1: View current schedules for JV LINE ID 396
SELECT 
    id,
    journal_voucher_line_id,
    schedule_date,
    schedule_amount,
    received_amount
FROM accounting_journal_voucher_line_schedules
WHERE journal_voucher_line_id = 396
ORDER BY schedule_date, id;

-- Step 2: View allocations for JV LINE ID 396
SELECT 
    allocation_id,
    jv_line_id,
    amount,
    usd,
    allocated_at
FROM accounting_receipt_allocations
WHERE jv_line_id = 396
ORDER BY allocated_at;

-- Step 3: Calculate FIFO allocation breakdown
WITH schedule_ordered AS (
    SELECT 
        id,
        journal_voucher_line_id,
        schedule_date,
        schedule_amount,
        ROW_NUMBER() OVER (ORDER BY schedule_date, id) AS schedule_order,
        SUM(schedule_amount) OVER (ORDER BY schedule_date, id) AS running_total,
        SUM(schedule_amount) OVER (ORDER BY schedule_date, id ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING) AS prev_running_total
    FROM accounting_journal_voucher_line_schedules
    WHERE journal_voucher_line_id = 396
),
total_allocation AS (
    SELECT 
        SUM(amount) AS total_allocated
    FROM accounting_receipt_allocations
    WHERE jv_line_id = 396
)
SELECT 
    so.id AS schedule_id,
    so.schedule_date,
    so.schedule_amount,
    so.schedule_order,
    COALESCE(so.prev_running_total, 0) AS cumulative_before,
    so.running_total AS cumulative_after,
    ta.total_allocated,
    CASE 
        WHEN ta.total_allocated <= COALESCE(so.prev_running_total, 0) THEN 0
        WHEN ta.total_allocated >= so.running_total THEN so.schedule_amount
        ELSE ta.total_allocated - COALESCE(so.prev_running_total, 0)
    END AS allocated_to_this_schedule,
    CASE 
        WHEN ta.total_allocated <= COALESCE(so.prev_running_total, 0) THEN 'Not Reached'
        WHEN ta.total_allocated >= so.running_total THEN 'Fully Allocated'
        ELSE 'Partially Allocated'
    END AS allocation_status
FROM schedule_ordered so
CROSS JOIN total_allocation ta
ORDER BY so.schedule_order;

-- Example Output Explanation:
-- If total allocation is 500 and schedules are:
-- Schedule 1: 160 (cumulative: 0-160)    -> Gets 160 (fully allocated)
-- Schedule 2: 160 (cumulative: 160-320)  -> Gets 160 (fully allocated)
-- Schedule 3: 180 (cumulative: 320-500)  -> Gets 180 (fully allocated)
-- Total: 500 allocated across all schedules