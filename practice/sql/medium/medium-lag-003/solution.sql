-- Xom Data · Last month per branch
-- Problem: https://xomdata.com/practice/medium-lag-003
-- Solved: 2026-08-13

-- Viết SQL của bạn ở đây
SELECT branch, month, revenue,
    LAG(revenue) OVER(
        PARTITION BY branch
        ORDER BY month
    ) as prev_revenue
FROM branch_revenue
