-- Stored Procedure for FIFO Allocation Update
-- This procedure can be called to update received amounts for specific or all journal voucher lines

DELIMITER //

DROP PROCEDURE IF EXISTS update_fifo_allocations//

CREATE PROCEDURE update_fifo_allocations(
    IN p_jv_line_id INT DEFAULT NULL  -- NULL means update all lines
)
BEGIN
    DECLARE v_error_msg VARCHAR(255);
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 v_error_msg = MESSAGE_TEXT;
        SELECT CONCAT('Error: ', v_error_msg) AS error_message;
    END;
    
    START TRANSACTION;
    
    -- Create temporary table with FIFO calculations
    DROP TEMPORARY TABLE IF EXISTS temp_fifo_calculations;
    
    CREATE TEMPORARY TABLE temp_fifo_calculations AS
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
        WHERE p_jv_line_id IS NULL OR s.journal_voucher_line_id = p_jv_line_id
    ),
    allocation_totals AS (
        SELECT 
            jv_line_id,
            SUM(amount) AS total_allocated_amount,
            SUM(usd) AS total_allocated_usd
        FROM accounting_receipt_allocations
        WHERE jv_line_id IS NOT NULL
            AND (p_jv_line_id IS NULL OR jv_line_id = p_jv_line_id)
        GROUP BY jv_line_id
    )
    SELECT 
        sc.id AS schedule_id,
        sc.journal_voucher_line_id,
        sc.schedule_date,
        sc.schedule_amount,
        CASE 
            WHEN at.total_allocated_amount IS NULL THEN 0
            WHEN at.total_allocated_amount <= COALESCE(sc.prev_cumulative_amount, 0) THEN 0
            WHEN at.total_allocated_amount >= sc.cumulative_schedule_amount THEN sc.schedule_amount
            ELSE at.total_allocated_amount - COALESCE(sc.prev_cumulative_amount, 0)
        END AS new_received_amount,
        at.total_allocated_amount,
        at.total_allocated_usd
    FROM schedule_cumulative sc
    LEFT JOIN allocation_totals at ON sc.journal_voucher_line_id = at.jv_line_id;
    
    -- Update the schedules table
    UPDATE accounting_journal_voucher_line_schedules s
    INNER JOIN temp_fifo_calculations t ON s.id = t.schedule_id
    SET 
        s.received_amount = t.new_received_amount,
        s.modified_at = CURRENT_TIMESTAMP,
        s.modified_by = USER()
    WHERE s.received_amount != t.new_received_amount  -- Only update if value changed
        OR s.received_amount IS NULL;
    
    -- Get summary of updates
    SELECT 
        journal_voucher_line_id,
        COUNT(*) AS schedules_count,
        SUM(schedule_amount) AS total_scheduled,
        SUM(new_received_amount) AS total_received,
        MAX(total_allocated_amount) AS total_allocated,
        CASE 
            WHEN SUM(new_received_amount) = 0 THEN 'No Allocation'
            WHEN SUM(new_received_amount) < SUM(schedule_amount) THEN 'Partial Allocation'
            ELSE 'Full Allocation'
        END AS allocation_status
    FROM temp_fifo_calculations
    GROUP BY journal_voucher_line_id
    ORDER BY journal_voucher_line_id;
    
    -- Clean up
    DROP TEMPORARY TABLE temp_fifo_calculations;
    
    COMMIT;
    
    SELECT 'FIFO allocation update completed successfully' AS status;
    
END//

DELIMITER ;

-- Usage Examples:

-- Update all journal voucher lines
-- CALL update_fifo_allocations(NULL);

-- Update specific journal voucher line (e.g., 396)
-- CALL update_fifo_allocations(396);