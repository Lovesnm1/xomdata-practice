-- Xom Data · The customer's joining month on every order
-- Problem: https://xomdata.com/practice/medium-cohort-001
-- Solved: 2026-10-16

-- Write your SQL here
SELECT customer_name, order_date, MIN(to_char(order_date::timestamp, 'YYYY-MM')) OVER(PARTITION BY customer_name) AS cohort_month
FROm orders
