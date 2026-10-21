-- Xom Data · What share of customers does the shop retain
-- Problem: https://xomdata.com/practice/medium-repeat-002
-- Solved: 2026-10-21

WITH CT1 AS(
    SELECT customer_id, COUNT(customer_id) as sl
    FROM orders
    GROUP BY customer_id
)
SELECT ROUND( (COUNT(*) FILTER (WHERE sl >=2))*100.0/ COUNT(*),2) as repeat_rate_pct
FROM CT1
