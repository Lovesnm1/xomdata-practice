-- Xom Data · Diamond, Gold, or regular member
-- Problem: https://xomdata.com/practice/medium-classify-001
-- Solved: 2026-10-14

SELECT customer_id, SUM(amount) as total_spent,
    CASE
        WHEN SUM(amount) >=10000000 THEN "Diamond"
        WHEN SUM(amount) >=3000000 THEN "Gold"
        ELSE "Member"
    END as tier
FROM orders
GROUP BY customer_id
