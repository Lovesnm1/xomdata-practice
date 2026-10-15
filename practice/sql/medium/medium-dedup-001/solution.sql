-- Xom Data · Each customer's latest contact number
-- Problem: https://xomdata.com/practice/medium-dedup-001
-- Solved: 2026-10-15

-- Write your SQL here
WITH ct1 as(
SELECT customer_name, phone, updated_date,
    RANK() OVER(PARTITION BY customer_name
                ORDER BY updated_date DESC) as lastest_update
FROM contact_updates
)
    SELECT customer_name, phone, updated_date
    FROM CT1
    WHERE lastest_update = 1
    ORDER BY customer_name
