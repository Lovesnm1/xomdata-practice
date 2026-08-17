-- Xom Data · Three-month rolling average revenue
-- Problem: https://xomdata.com/practice/medium-rolling-001
-- Solved: 2026-08-17

-- Viết SQL của bạn ở đây
SELECT month, revenue, 
    ROUND(AVG(revenue) OVER(
        ORDER BY month
         ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ),2) AS avg_3m
FROM shop_revenue
