-- Xom Data · Balance after each transaction
-- Problem: https://xomdata.com/practice/medium-runtotal-003
-- Solved: 2026-08-17

WITH CT1 AS (
    SELECT txn_date, amount, 
     LAG(amount) OVER(
        ORDER BY txn_date
     ) AS prev_amount
     FROM transactions
)
    SELECT txn_date, amount, 
    CASE
        WHEN prev_amount IS NULL THEN amount
        ELSE SUM(amount) OVER(
            ORDER BY txn_date
        )
    END as balance
    FROM CT1
