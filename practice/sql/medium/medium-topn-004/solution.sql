-- Xom Data · Each branch's two slowest months
-- Problem: https://xomdata.com/practice/medium-topn-004
-- Solved: 2026-08-14

WITH CT1 AS(
    SELECT branch, 
    month,
    revenue,
    RANK() OVER(
        PARTITION BY branch
        ORDER BY revenue asc, month
    ) as rank_in_branch
    FROM branch_monthly
)
    SELECT branch,
    month,
    revenue
    FROM CT1
    WHERE rank_in_branch <=2
