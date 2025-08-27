-- SQL script to update doc_ref format in journal_voucher_lines table
-- This script changes:
--   REG$#[number] to REG#[number]/$
--   REGL#[number] to REG#[number]/L

-- Backup the table first (optional but recommended)
-- CREATE TABLE journal_voucher_lines_backup AS SELECT * FROM journal_voucher_lines;

-- Update REG$#[number] to REG#[number]/$
UPDATE journal_voucher_lines
SET doc_ref = CONCAT(
    'REG#',
    SUBSTRING(doc_ref, 6),  -- Extract everything after 'REG$#'
    '/$'
)
WHERE doc_ref LIKE 'REG$#%';

-- Update REGL#[number] to REG#[number]/L
UPDATE journal_voucher_lines
SET doc_ref = CONCAT(
    'REG#',
    SUBSTRING(doc_ref, 6),  -- Extract everything after 'REGL#'
    '/L'
)
WHERE doc_ref LIKE 'REGL#%';

-- Verify the updates (optional)
-- SELECT doc_ref FROM journal_voucher_lines 
-- WHERE doc_ref LIKE 'REG#%/$' OR doc_ref LIKE 'REG#%/L'
-- ORDER BY doc_ref;

-- Alternative approach using REGEXP_REPLACE (for PostgreSQL/MySQL 8.0+)
-- For REG$#[number] to REG#[number]/$
-- UPDATE journal_voucher_lines
-- SET doc_ref = REGEXP_REPLACE(doc_ref, '^REG\$#(.+)$', 'REG#$1/$')
-- WHERE doc_ref ~ '^REG\$#[0-9]+$';  -- PostgreSQL
-- WHERE doc_ref REGEXP '^REG\\$#[0-9]+$';  -- MySQL

-- For REGL#[number] to REG#[number]/L
-- UPDATE journal_voucher_lines
-- SET doc_ref = REGEXP_REPLACE(doc_ref, '^REGL#(.+)$', 'REG#$1/L')
-- WHERE doc_ref ~ '^REGL#[0-9]+$';  -- PostgreSQL
-- WHERE doc_ref REGEXP '^REGL#[0-9]+$';  -- MySQL

-- Alternative approach for SQL Server using STUFF
-- For REG$#[number] to REG#[number]/$
-- UPDATE journal_voucher_lines
-- SET doc_ref = STUFF(doc_ref, 4, 1, '#') + '/$'
-- WHERE doc_ref LIKE 'REG$#%';

-- For REGL#[number] to REG#[number]/L
-- UPDATE journal_voucher_lines
-- SET doc_ref = STUFF(doc_ref, 4, 1, '#') + '/L'
-- WHERE doc_ref LIKE 'REGL#%';