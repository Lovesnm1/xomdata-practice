-- Xom Data · Monthly store visit rhythm
-- Problem: https://xomdata.com/practice/medium-active-001
-- Solved: 2026-11-02

SELECT   TO_CHAR(order_date::timestamp,'YYYY-MM') as month ,COUNT(DISTINCT customer_id) as active_customers
FROm orders
GROUP BY month
