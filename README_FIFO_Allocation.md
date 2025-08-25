# FIFO Allocation System for Journal Voucher Schedules

This solution implements a FIFO (First In, First Out) allocation system that updates the `received_amount` field in the `accounting_journal_voucher_line_schedules` table based on allocations from the `accounting_receipt_allocations` table.

## Problem Description

You have journal voucher lines with multiple payment schedules, and you need to allocate received amounts to these schedules in chronological order (FIFO). For example:
- JV Line ID 396 has 3 schedules: 160, 160, and 180
- Total allocated: 500 USD
- Result: First schedule gets 160, second gets 160, third gets 180

## Files Created

### 1. `fifo_allocation_update.sql`
Main script that performs the FIFO allocation update for all journal voucher lines.

**Features:**
- Calculates total allocations per JV line from `accounting_receipt_allocations`
- Orders schedules by `schedule_date` and `id` (FIFO)
- Uses window functions to calculate cumulative amounts
- Updates `received_amount` field with proper FIFO logic
- Provides before/after verification queries

### 2. `test_example_jv_396.sql`
Test script specifically for your example (JV Line ID 396).

**Features:**
- Shows current state of JV Line 396
- Displays allocations for the line
- Demonstrates step-by-step FIFO calculation
- Provides example calculation with your specific numbers

### 3. `fifo_allocation_procedure.sql`
Reusable stored procedure for ongoing FIFO allocation updates.

**Features:**
- Can update all JV lines or a specific JV line
- Includes error handling and transaction management
- Returns detailed summary and verification results
- Customizable `modified_by` parameter

## FIFO Logic Explanation

The allocation follows this logic for each schedule (ordered by date):

1. **No Allocation**: If total allocated ≤ cumulative amount of previous schedules
   - `received_amount = 0`

2. **Full Allocation**: If total allocated ≥ cumulative amount including this schedule
   - `received_amount = schedule_amount`

3. **Partial Allocation**: If total allocated falls within this schedule's range
   - `received_amount = total_allocated - cumulative_amount_of_previous_schedules`

## Usage Instructions

### Option 1: One-time Update (All JV Lines)
```sql
-- Execute the main update script
source fifo_allocation_update.sql;
```

### Option 2: Test Specific JV Line
```sql
-- Test with JV Line 396 example
source test_example_jv_396.sql;
```

### Option 3: Use Stored Procedure
```sql
-- Create the procedure
source fifo_allocation_procedure.sql;

-- Update all JV lines
CALL UpdateFIFOAllocation();

-- Update specific JV line (e.g., 396)
CALL UpdateFIFOAllocation(396, 'USER_UPDATE');

-- Update all with custom modified_by
CALL UpdateFIFOAllocation(NULL, 'BATCH_PROCESS');
```

## Example Calculation

For JV Line ID 396 with schedules [160, 160, 180] and 500 USD allocated:

| Schedule | Date Order | Schedule Amount | Previous Cumulative | Available After Previous | Received Amount |
|----------|------------|-----------------|-------------------|-------------------------|----------------|
| 1        | 1          | 160            | 0                 | 500 - 0 = 500         | min(160, 500) = 160 |
| 2        | 2          | 160            | 160               | 500 - 160 = 340       | min(160, 340) = 160 |
| 3        | 3          | 180            | 320               | 500 - 320 = 180       | min(180, 180) = 180 |

**Total Allocated: 160 + 160 + 180 = 500 ✓**

## Key Features

- **Database-level FIFO**: Uses SQL window functions for efficient processing
- **Transaction Safety**: Includes proper transaction handling
- **Verification**: Provides before/after comparison
- **Flexibility**: Can target specific JV lines or process all
- **Audit Trail**: Updates `modified_at` and `modified_by` fields
- **Currency Handling**: Properly handles USD amounts from allocations table

## Important Notes

1. The script uses `schedule_date` and `id` for ordering (FIFO)
2. Currency conversion: Uses `amount` for USD currency, `usd` field for others
3. All calculations are done at the database level for consistency
4. The procedure includes error handling and rollback on failure
5. Results are limited to 100 records for performance in the procedure output