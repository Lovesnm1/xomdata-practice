-- Xom Data · 7-day moving average of revenue
-- Problem: https://xomdata.com/practice/hard-frame-001
-- Solved: 2026-08-07

SELECT date, amount as revenue,
    ROUND(AVG(amount) OVER(
        ORDER BY date
        ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
    ),2) as ma7
FROM daily_revenue
