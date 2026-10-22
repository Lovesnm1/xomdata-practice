-- Xom Data · Which channel grows loyal customers
-- Problem: https://xomdata.com/practice/medium-repeat-003
-- Solved: 2026-10-22

WITH ct1 as(
    SELECT channel, count(*) as total_customers
    FROM customers
    GROUP BY channel
),
ct2 as(
SELECT customer_id, count(*) as sl_order
FROM orders
GROUP BY customer_id),
ct3 as(
    SELECT  channel,
    COUNT(*) FILTER (WHERE sl_order >=2) as repeat_customers
    FROM ct2 
    JOIN customers on ct2.customer_id = customers.customer_id
    GROUP BY channel
)
    SELECT ct1.channel, total_customers, repeat_customers,
    ROUND(repeat_customers*100.0/total_customers,2) as repeat_rate_pct
    FROM ct1
    JOIN ct3 on ct1.channel = ct3.channel
