-- Xom Data · Trend labels for the monthly report
-- Problem: https://xomdata.com/practice/medium-lag-004
-- Solved: 2026-08-17

WITH CT1 AS(
    SELECT month, revenue, 
    LAG(revenue) OVER(
        ORDER BY month
    ) AS prev_revenue
    FROM monthly_revenue
)
    SELECT month, revenue, 
    CASE
        WHEN prev_revenue IS NULL THEN 'First'
        WHEN prev_revenue < revenue THEN 'Up'
        WHEN prev_revenue > revenue THEN 'Down'
        ELSE 'Flat'
    END as trend
    FROM CT1
    ORDER BY month
