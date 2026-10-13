-- Xom Data · Who has spent past the five-million mark
-- Problem: https://xomdata.com/practice/medium-monetary-001
-- Solved: 2026-10-13

WITH CT1 as (
    SELECT customer_id, SUM(amount) as total_spent
    FROM orders
    GROUP BY customer_id
)
SELECT customer_id, total_spent,
    CASE
        WHEN total_spent >=5000000 THEN "VIP"
        ELSE "Standard"
    END as segment
FROM ct1
