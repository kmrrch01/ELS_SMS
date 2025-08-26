-- Query to sum USD and LBP amounts separately
SELECT 
    allo.currency,
    SUM(allo.amount) as total_amount
FROM accounting_receipt_allocations allo
JOIN accounting_journal_voucher_lines jvl ON jvl.id = allo.jv_line_id
WHERE jvl.auxiliary_id = 1 AND jvl.schedule > 1
GROUP BY allo.currency
HAVING allo.currency IN ('USD', 'LBP')
ORDER BY allo.currency;

-- Alternative query with more detailed breakdown
SELECT 
    allo.currency,
    COUNT(*) as transaction_count,
    SUM(allo.amount) as total_amount,
    AVG(allo.amount) as average_amount,
    MIN(allo.amount) as min_amount,
    MAX(allo.amount) as max_amount
FROM accounting_receipt_allocations allo
JOIN accounting_journal_voucher_lines jvl ON jvl.id = allo.jv_line_id
WHERE jvl.auxiliary_id = 1 AND jvl.schedule > 1
    AND allo.currency IN ('USD', 'LBP')
GROUP BY allo.currency
ORDER BY allo.currency;

-- If you want to see the totals side by side in one row
SELECT 
    SUM(CASE WHEN allo.currency = 'USD' THEN allo.amount ELSE 0 END) as total_usd,
    SUM(CASE WHEN allo.currency = 'LBP' THEN allo.amount ELSE 0 END) as total_lbp
FROM accounting_receipt_allocations allo
JOIN accounting_journal_voucher_lines jvl ON jvl.id = allo.jv_line_id
WHERE jvl.auxiliary_id = 1 AND jvl.schedule > 1;