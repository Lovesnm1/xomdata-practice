-- Xom Data · Spending tiers of loyal customers
-- Problem: https://xomdata.com/practice/medium-denserank-003
-- Solved: 2026-10-16

-- Write your SQL here
WITH CT1 as(
SELECT customer_name, SUM(amount) as total_spent
FROM purchases
GROUP BY customer_name
)
 SELECT customer_name, total_spent, DENSE_RANK() OVER(ORDER BY total_spent DESC) as spend_tier
 FROM CT1
 ORDER BY spend_tier ASC, customer_name
