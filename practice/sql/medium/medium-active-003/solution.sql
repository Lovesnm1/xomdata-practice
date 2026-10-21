-- Xom Data · The month that exploded with new customers
-- Problem: https://xomdata.com/practice/medium-active-003
-- Solved: 2026-10-21

WITH ct1 as(
    SELECT customer_id, MIN(TO_CHAR(order_date::TIMESTAMP, 'YYYY-MM')) as month
    FROM orders
    GROUP BY customer_id
)
    SELECT month, COUNT(month) as new_customers
    FROM ct1
    GROUP BY month
    ORDER BY new_customers DESc, month ASC
    LIMIT 1
