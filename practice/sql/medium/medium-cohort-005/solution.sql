-- Xom Data · Each customer's starting quarter
-- Problem: https://xomdata.com/practice/medium-cohort-005
-- Solved: 2026-10-22

SELECT customer_id, MIN(TO_CHAR(order_date::date, 'YYYY-"Q"Q')) as first_quarter
FROM orders
GROUP BY customer_id
