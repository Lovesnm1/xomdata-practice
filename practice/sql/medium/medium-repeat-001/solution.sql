-- Xom Data · One-time buyers vs. repeat customers
-- Problem: https://xomdata.com/practice/medium-repeat-001
-- Solved: 2026-10-14

WITH CT1 as(
    SELECT customer_id,
    COUNT(*) as solanmua
    FROM orders
    GROUP BY customer_id
    )
SELECT 
    CASE
        WHEN solanmua = 1 THEN 'one-time'
        ELSE 'repeat'
    END AS customer_type,
    COUNT(*) AS customer_count
FROM ct1   
GROUP BY customer_type
