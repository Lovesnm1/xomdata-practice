-- Xom Data · Sales champion of each region
-- Problem: https://xomdata.com/practice/medium-topn-001
-- Solved: 2026-08-17

WITH ct1 as(
    SELECT region, rep_name ,sales_amount,
    RANK() OVER(
        PARTITION BY region
        ORDER BY sales_amount DESC, rep_name
    ) as rank_in_reg
    FROM reps
)
    SELECT region, rep_name, sales_amount
    FROM ct1
    WHERE rank_in_reg = 1
