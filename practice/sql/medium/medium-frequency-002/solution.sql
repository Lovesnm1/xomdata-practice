-- Xom Data · Customers Who Hit Three Orders a Year
-- Problem: https://xomdata.com/practice/medium-frequency-002
-- Solved: 2026-10-14

with CT1 as(
SELECT customer_id, COUNT(order_id) as order_count
FROM orders
WHERE order_date >= "2024-01-01" and order_date <= "2024-12-31"
GROUP BY customer_id
)
 SELECT customer_id, order_count
 FROM ct1
 WHERE order_count >=3
