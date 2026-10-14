-- Xom Data · Average Orders per Customer by Channel
-- Problem: https://xomdata.com/practice/medium-frequency-006
-- Solved: 2026-10-14

WITH CT1 as(
SELECT channel, COUNT(DISTINCT customer_name) as customers, COUNT(order_id) as total_orders
FROM customers
JOIN orders on orders.customer_id = customers.customer_id
GROUP BY channel
)
 SELECT channel, customers, total_orders,
    ROUND(total_orders*1.0/ customers,2) as orders_per_customer
 FROM CT1
 ORDER BY orders_per_customer DESC,channel
