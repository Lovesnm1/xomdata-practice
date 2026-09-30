-- Xom Data · Customers who ever bought skincare
-- Problem: https://xomdata.com/practice/easy-join-006
-- Solved: 2026-09-30

-- Write your SQL here
SELECT DISTINCT(customer_name)
FROM customers
JOIN purchases on customers.id = customer_id
WHERE category == "Skincare"
