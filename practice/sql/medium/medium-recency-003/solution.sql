-- Xom Data · Customer Freshness Leaderboard
-- Problem: https://xomdata.com/practice/medium-recency-003
-- Solved: 2026-10-23

WITH CT1 AS(
    SELECT customer_id, max(order_date) as last_order_date
    FROM orders
    GROUP BY customer_id 
)
    SELECT customer_id, last_order_date,
    RANK() OVER(ORDER BY last_order_date DESC) as freshness_rank
    FROM ct1
    ORDER BY freshness_rank, customer_id
