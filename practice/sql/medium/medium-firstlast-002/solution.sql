-- Xom Data · Each Channel's Most Recent Face
-- Problem: https://xomdata.com/practice/medium-firstlast-002
-- Solved: 2026-10-27

WITH ct1 as(
    SELECT channel, c.customer_id, MAX(order_date) AS last_order_date
    FROM customers c
    JOIN orders on c.customer_id = orders.customer_id
    GROUP BY channel,c.customer_id
),
CT2 as(
    SELECT channel, customer_id, last_order_date,
    ROW_NUMBER() OVER(
        PARTITION BY channel
        ORDER BY last_order_date DESC, customer_id
    ) as xh
    FROM ct1
)
    SELECT channel, customer_id, last_order_date
    FROM ct2
    WHERE xh = 1
