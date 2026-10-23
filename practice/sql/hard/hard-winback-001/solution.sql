-- Xom Data · Those who returned after two months of silence
-- Problem: https://xomdata.com/practice/hard-winback-001
-- Solved: 2026-10-23

WITH CT1 as(
    SELECT customer_id, order_date, order_date::date - LAG(order_date) OVER(PARTITION BY customer_id)::date  as gap_days
    FROM orders
)
    SELECT customer_id, order_date, gap_days
    FROM CT1
    WHERE gap_days >=60
