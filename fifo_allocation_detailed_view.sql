-- Create a View for Detailed FIFO Allocation Status
-- This view provides a comprehensive look at allocation status for each schedule

CREATE OR REPLACE VIEW v_fifo_allocation_status AS
WITH schedule_cumulative AS (
    SELECT 
        s.id AS schedule_id,
        s.journal_voucher_line_id,
        s.schedule_date,
        s.schedule_amount,
        s.received_amount,
        s.created_at,
        s.modified_at,
        SUM(s.schedule_amount) OVER (
            PARTITION BY s.journal_voucher_line_id 
            ORDER BY s.schedule_date, s.id
        ) AS cumulative_schedule_amount,
        SUM(s.schedule_amount) OVER (
            PARTITION BY s.journal_voucher_line_id 
            ORDER BY s.schedule_date, s.id
            ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING
        ) AS prev_cumulative_amount,
        ROW_NUMBER() OVER (
            PARTITION BY s.journal_voucher_line_id 
            ORDER BY s.schedule_date, s.id
        ) AS schedule_sequence
    FROM accounting_journal_voucher_line_schedules s
),
allocation_details AS (
    SELECT 
        jv_line_id,
        COUNT(*) AS allocation_count,
        SUM(amount) AS total_allocated_amount,
        SUM(usd) AS total_allocated_usd,
        SUM(lbp) AS total_allocated_lbp,
        MIN(allocated_at) AS first_allocation_date,
        MAX(allocated_at) AS last_allocation_date,
        GROUP_CONCAT(DISTINCT currency) AS currencies_used
    FROM accounting_receipt_allocations
    WHERE jv_line_id IS NOT NULL
    GROUP BY jv_line_id
),
fifo_calculation AS (
    SELECT 
        sc.*,
        ad.total_allocated_amount,
        ad.total_allocated_usd,
        ad.total_allocated_lbp,
        ad.allocation_count,
        ad.first_allocation_date,
        ad.last_allocation_date,
        ad.currencies_used,
        CASE 
            WHEN ad.total_allocated_amount IS NULL THEN 0
            WHEN ad.total_allocated_amount <= COALESCE(sc.prev_cumulative_amount, 0) THEN 0
            WHEN ad.total_allocated_amount >= sc.cumulative_schedule_amount THEN sc.schedule_amount
            ELSE ad.total_allocated_amount - COALESCE(sc.prev_cumulative_amount, 0)
        END AS calculated_received_amount
    FROM schedule_cumulative sc
    LEFT JOIN allocation_details ad ON sc.journal_voucher_line_id = ad.jv_line_id
)
SELECT 
    schedule_id,
    journal_voucher_line_id,
    schedule_sequence,
    schedule_date,
    schedule_amount,
    received_amount AS current_received_amount,
    calculated_received_amount AS fifo_received_amount,
    schedule_amount - calculated_received_amount AS outstanding_amount,
    ROUND((calculated_received_amount / schedule_amount) * 100, 2) AS received_percentage,
    total_allocated_amount,
    allocation_count,
    first_allocation_date,
    last_allocation_date,
    currencies_used,
    CASE 
        WHEN calculated_received_amount = 0 THEN 'Not Received'
        WHEN calculated_received_amount < schedule_amount THEN 'Partially Received'
        ELSE 'Fully Received'
    END AS status,
    CASE 
        WHEN calculated_received_amount != received_amount THEN 'Update Required'
        ELSE 'In Sync'
    END AS sync_status,
    created_at,
    modified_at
FROM fifo_calculation;

-- Query Examples using the view:

-- 1. Check status for specific JV Line
-- SELECT * FROM v_fifo_allocation_status WHERE journal_voucher_line_id = 396;

-- 2. Find schedules that need updating
-- SELECT * FROM v_fifo_allocation_status WHERE sync_status = 'Update Required';

-- 3. Summary by JV Line
-- SELECT 
--     journal_voucher_line_id,
--     COUNT(*) as schedule_count,
--     SUM(schedule_amount) as total_scheduled,
--     SUM(fifo_received_amount) as total_received,
--     SUM(outstanding_amount) as total_outstanding,
--     ROUND(AVG(received_percentage), 2) as avg_received_percentage
-- FROM v_fifo_allocation_status
-- GROUP BY journal_voucher_line_id
-- HAVING SUM(fifo_received_amount) > 0;