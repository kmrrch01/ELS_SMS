-- Test Example for JV LINE ID 396
-- This demonstrates the FIFO allocation logic with your specific example
-- Allocated: 500 USD, Schedules: 160, 160, 180

-- First, let's see the current state of JV LINE ID 396
SELECT 
    'CURRENT STATE - JV LINE 396' as status,
    id,
    journal_voucher_line_id,
    schedule_date,
    schedule_amount,
    received_amount
FROM accounting_journal_voucher_line_schedules 
WHERE journal_voucher_line_id = 396
ORDER BY schedule_date, id;

-- Check allocations for JV LINE 396
SELECT 
    'ALLOCATIONS FOR JV LINE 396' as status,
    allocation_id,
    receipt_id,
    jv_line_id,
    amount,
    currency,
    usd,
    CASE 
        WHEN currency = 'USD' THEN amount 
        ELSE usd 
    END as effective_usd_amount
FROM accounting_receipt_allocations 
WHERE jv_line_id = 396;

-- Demonstrate FIFO calculation step by step
WITH allocated_total AS (
    SELECT 
        jv_line_id,
        SUM(CASE 
            WHEN currency = 'USD' THEN amount 
            ELSE usd 
        END) as total_allocated_usd
    FROM accounting_receipt_allocations 
    WHERE jv_line_id = 396
    GROUP BY jv_line_id
),
schedule_analysis AS (
    SELECT 
        id,
        journal_voucher_line_id,
        schedule_date,
        schedule_amount,
        received_amount,
        ROW_NUMBER() OVER (ORDER BY schedule_date, id) as sequence_order,
        SUM(schedule_amount) OVER (ORDER BY schedule_date, id ROWS UNBOUNDED PRECEDING) as cumulative_amount,
        COALESCE(SUM(schedule_amount) OVER (ORDER BY schedule_date, id ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING), 0) as previous_cumulative
    FROM accounting_journal_voucher_line_schedules
    WHERE journal_voucher_line_id = 396
)
SELECT 
    'FIFO CALCULATION BREAKDOWN' as status,
    sa.sequence_order,
    sa.schedule_date,
    sa.schedule_amount,
    sa.received_amount as current_received,
    at.total_allocated_usd as total_available,
    sa.previous_cumulative as amount_used_by_previous_schedules,
    sa.cumulative_amount as cumulative_including_this_schedule,
    -- FIFO Logic explanation
    CASE 
        WHEN at.total_allocated_usd <= sa.previous_cumulative THEN 
            CONCAT('No allocation (', at.total_allocated_usd, ' <= ', sa.previous_cumulative, ')')
        WHEN at.total_allocated_usd >= sa.cumulative_amount THEN 
            CONCAT('Full allocation (', at.total_allocated_usd, ' >= ', sa.cumulative_amount, ')')
        ELSE 
            CONCAT('Partial allocation (', at.total_allocated_usd, ' - ', sa.previous_cumulative, ' = ', 
                   (at.total_allocated_usd - sa.previous_cumulative), ')')
    END as allocation_logic,
    -- Calculated received amount
    CASE 
        WHEN at.total_allocated_usd <= sa.previous_cumulative THEN 0
        WHEN at.total_allocated_usd >= sa.cumulative_amount THEN sa.schedule_amount
        ELSE GREATEST(0, at.total_allocated_usd - sa.previous_cumulative)
    END as calculated_received_amount
FROM schedule_analysis sa
CROSS JOIN allocated_total at
ORDER BY sa.sequence_order;

-- Example with your specific numbers (assuming schedules are 160, 160, 180 and allocation is 500)
SELECT 
    'EXAMPLE CALCULATION WITH YOUR NUMBERS' as status,
    'Schedule 1: 160' as schedule_info,
    'Available: 500, Used by previous: 0' as calculation,
    'Result: min(160, 500-0) = 160' as result
UNION ALL
SELECT 
    '',
    'Schedule 2: 160',
    'Available: 500, Used by previous: 160',
    'Result: min(160, 500-160) = 160'
UNION ALL
SELECT 
    '',
    'Schedule 3: 180',
    'Available: 500, Used by previous: 320',
    'Result: min(180, 500-320) = 180'
UNION ALL
SELECT 
    '',
    'Total Allocated: 160+160+180 = 500',
    'Matches available allocation',
    'Perfect FIFO allocation';