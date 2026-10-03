-- Xom Data · Each customer's debut month
-- Problem: https://xomdata.com/practice/medium-cohort-003
-- Solved: 2026-10-03

SELECT DISTINCT customer_id,
    MIN(strftime('%Y-%m',order_date))
    OVER (PARTITION BY customer_id) as cohort_month
FROM orders
ORDER BY cohort_month
