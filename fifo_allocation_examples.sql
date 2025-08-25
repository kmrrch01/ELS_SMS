-- FIFO Allocation Examples and Use Cases
-- This file demonstrates various scenarios for the FIFO allocation system

-- ============================================
-- SCENARIO 1: Your Example - JV Line 396
-- ============================================
-- Total Allocation: 500 USD
-- Schedules: 160, 160, 180 (Total: 500)
-- Expected Result: All schedules fully allocated

-- Check current state
SELECT 
    'Schedule' as type,
    id,
    schedule_date,
    schedule_amount,
    received_amount
FROM accounting_journal_voucher_line_schedules
WHERE journal_voucher_line_id = 396
UNION ALL
SELECT 
    'Allocation' as type,
    allocation_id,
    allocated_at,
    amount,
    0
FROM accounting_receipt_allocations
WHERE jv_line_id = 396;

-- ============================================
-- SCENARIO 2: Partial Allocation
-- ============================================
-- Example: JV Line has schedules of 200, 300, 400 (Total: 900)
-- But only 450 has been allocated
-- Expected: First schedule gets 200, second gets 250, third gets 0

WITH example_scenario AS (
    SELECT 
        journal_voucher_line_id,
        schedule_date,
        schedule_amount,
        SUM(schedule_amount) OVER (ORDER BY schedule_date) as running_total,
        450 as total_allocated -- Example allocation
    FROM accounting_journal_voucher_line_schedules
    WHERE journal_voucher_line_id = 397 -- Example JV Line
)
SELECT 
    *,
    CASE 
        WHEN total_allocated >= running_total THEN schedule_amount
        WHEN total_allocated > (running_total - schedule_amount) 
            THEN total_allocated - (running_total - schedule_amount)
        ELSE 0
    END as calculated_allocation
FROM example_scenario;

-- ============================================
-- SCENARIO 3: Over-allocation
-- ============================================
-- When allocated amount exceeds total scheduled amount
-- This query finds such cases

SELECT 
    jvls.journal_voucher_line_id,
    SUM(jvls.schedule_amount) as total_scheduled,
    COALESCE(alloc.total_allocated, 0) as total_allocated,
    COALESCE(alloc.total_allocated, 0) - SUM(jvls.schedule_amount) as over_allocated_amount
FROM accounting_journal_voucher_line_schedules jvls
LEFT JOIN (
    SELECT 
        jv_line_id,
        SUM(amount) as total_allocated
    FROM accounting_receipt_allocations
    WHERE jv_line_id IS NOT NULL
    GROUP BY jv_line_id
) alloc ON jvls.journal_voucher_line_id = alloc.jv_line_id
GROUP BY jvls.journal_voucher_line_id, alloc.total_allocated
HAVING COALESCE(alloc.total_allocated, 0) > SUM(jvls.schedule_amount);

-- ============================================
-- SCENARIO 4: Multiple Currency Allocations
-- ============================================
-- When allocations are in different currencies

SELECT 
    ra.jv_line_id,
    ra.currency,
    SUM(ra.amount) as total_in_currency,
    SUM(ra.usd) as total_in_usd,
    SUM(ra.lbp) as total_in_lbp,
    COUNT(*) as allocation_count
FROM accounting_receipt_allocations ra
WHERE ra.jv_line_id IS NOT NULL
GROUP BY ra.jv_line_id, ra.currency
ORDER BY ra.jv_line_id, ra.currency;

-- ============================================
-- SCENARIO 5: Allocation Timeline Analysis
-- ============================================
-- Shows how allocations were received over time

SELECT 
    jv_line_id,
    DATE(allocated_at) as allocation_date,
    SUM(amount) as daily_allocation,
    SUM(SUM(amount)) OVER (
        PARTITION BY jv_line_id 
        ORDER BY DATE(allocated_at)
    ) as cumulative_allocation
FROM accounting_receipt_allocations
WHERE jv_line_id = 396
GROUP BY jv_line_id, DATE(allocated_at)
ORDER BY allocation_date;

-- ============================================
-- UTILITY QUERY: Verify FIFO Logic
-- ============================================
-- This query shows the step-by-step FIFO allocation process

WITH allocation_breakdown AS (
    SELECT 
        s.id,
        s.journal_voucher_line_id,
        s.schedule_date,
        s.schedule_amount,
        @running_schedule := @running_schedule + s.schedule_amount as cumulative_scheduled,
        @running_schedule - s.schedule_amount as prev_cumulative,
        (SELECT COALESCE(SUM(amount), 0) 
         FROM accounting_receipt_allocations 
         WHERE jv_line_id = s.journal_voucher_line_id) as total_allocated
    FROM 
        accounting_journal_voucher_line_schedules s,
        (SELECT @running_schedule := 0) r
    WHERE 
        s.journal_voucher_line_id = 396
    ORDER BY 
        s.schedule_date, s.id
)
SELECT 
    *,
    CASE 
        WHEN total_allocated <= prev_cumulative THEN 0
        WHEN total_allocated >= cumulative_scheduled THEN schedule_amount
        ELSE total_allocated - prev_cumulative
    END as fifo_allocation,
    CASE 
        WHEN total_allocated <= prev_cumulative THEN 'Not Reached'
        WHEN total_allocated >= cumulative_scheduled THEN 'Fully Allocated'
        ELSE 'Partially Allocated'
    END as allocation_status
FROM allocation_breakdown;