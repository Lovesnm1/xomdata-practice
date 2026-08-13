-- Xom Data · Last month's revenue next to each month
-- Problem: https://xomdata.com/practice/medium-lag-001
-- Solved: 2026-08-13

-- Viết SQL của bạn ở đây
    SELECT month, revenue,
    LAG(revenue) OVER(
        ORDER BY month
    ) as prev_revenue
    FROM monthly_revenue
