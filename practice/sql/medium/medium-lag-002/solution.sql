-- Xom Data · Change versus last month
-- Problem: https://xomdata.com/practice/medium-lag-002
-- Solved: 2026-08-17

-- Viết SQL của bạn ở đây
    SELECT month, revenue,
    revenue- LAG(revenue) OVER(
        ORDER BY month
    ) as mom_change
    FROM monthly_revenue
