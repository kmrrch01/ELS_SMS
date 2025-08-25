-- Stored Procedure for FIFO Allocation
-- This creates a reusable procedure to update received amounts using FIFO logic

DELIMITER //

DROP PROCEDURE IF EXISTS UpdateFIFOAllocation//

CREATE PROCEDURE UpdateFIFOAllocation(
    IN p_jv_line_id INT,  -- Optional: specific JV line ID, NULL for all
    IN p_modified_by VARCHAR(50)  -- Modified by user identifier
)
BEGIN
    DECLARE v_total_updated INT DEFAULT 0;
    DECLARE v_total_processed INT DEFAULT 0;
    DECLARE v_jv_lines_affected INT DEFAULT 0;
    
    -- Handle default values
    IF p_modified_by IS NULL OR p_modified_by = '' THEN
        SET p_modified_by = 'FIFO_ALLOCATION_PROC';
    END IF;
    
    -- Error handling
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1
            @p1 = RETURNED_SQLSTATE, @p2 = MESSAGE_TEXT;
        SELECT 'ERROR' as status, @p1 as sql_state, @p2 as message;
    END;
    
    START TRANSACTION;
    
    -- Create temporary table for calculations
    DROP TEMPORARY TABLE IF EXISTS temp_fifo_allocation;
    
    CREATE TEMPORARY TABLE temp_fifo_allocation AS
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
            AND (p_jv_line_id IS NULL OR jv_line_id = p_jv_line_id)
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
        WHERE (p_jv_line_id IS NULL OR journal_voucher_line_id = p_jv_line_id)
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
    
    -- Get statistics before update
    SELECT 
        COUNT(*) INTO v_total_processed,
        COUNT(DISTINCT journal_voucher_line_id) INTO v_jv_lines_affected
    FROM temp_fifo_allocation;
    
    -- Update the actual table with the calculated received amounts
    UPDATE accounting_journal_voucher_line_schedules ajvls
    INNER JOIN temp_fifo_allocation tfa ON ajvls.id = tfa.id
    SET ajvls.received_amount = tfa.new_received_amount,
        ajvls.modified_at = CURRENT_TIMESTAMP,
        ajvls.modified_by = p_modified_by
    WHERE ajvls.received_amount != tfa.new_received_amount;
    
    -- Get count of updated records
    SET v_total_updated = ROW_COUNT();
    
    -- Return summary information
    SELECT 
        'SUCCESS' as status,
        v_total_processed as total_schedules_processed,
        v_total_updated as schedules_updated,
        v_jv_lines_affected as jv_lines_affected,
        CASE 
            WHEN p_jv_line_id IS NOT NULL THEN CONCAT('JV Line ID: ', p_jv_line_id)
            ELSE 'All JV Lines'
        END as scope;
    
    -- Show detailed results for verification (limit to first 100 records)
    SELECT 
        'UPDATED_RECORDS' as record_type,
        tfa.journal_voucher_line_id,
        tfa.schedule_date,
        tfa.schedule_amount,
        tfa.current_received_amount as old_received_amount,
        tfa.new_received_amount,
        tfa.total_allocated,
        tfa.schedule_order
    FROM temp_fifo_allocation tfa
    WHERE tfa.current_received_amount != tfa.new_received_amount
    ORDER BY tfa.journal_voucher_line_id, tfa.schedule_order
    LIMIT 100;
    
    -- Clean up
    DROP TEMPORARY TABLE temp_fifo_allocation;
    
    COMMIT;
    
END//

DELIMITER ;

-- Create a convenience procedure for updating all JV lines with default settings
DELIMITER //

DROP PROCEDURE IF EXISTS UpdateAllFIFOAllocation//

CREATE PROCEDURE UpdateAllFIFOAllocation()
BEGIN
    CALL UpdateFIFOAllocation(NULL, 'FIFO_ALLOCATION_PROC');
END//

DELIMITER ;

-- Usage examples:

-- Example 1: Simplest - Update all JV lines (uses convenience procedure)
-- CALL UpdateAllFIFOAllocation();

-- Example 2: Update all JV lines with default modified_by
-- CALL UpdateFIFOAllocation(NULL, NULL);

-- Example 3: Update specific JV line (your example)
-- CALL UpdateFIFOAllocation(396, 'USER_FIFO_UPDATE');

-- Example 4: Update all JV lines with custom modified_by
-- CALL UpdateFIFOAllocation(NULL, 'BATCH_FIFO_PROCESS');

-- Example 5: Update specific JV line with default modified_by
-- CALL UpdateFIFOAllocation(396, NULL);