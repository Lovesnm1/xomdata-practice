-- Xom Data · Opening order or returning order
-- Problem: https://xomdata.com/practice/medium-cohort-002
-- Solved: 2026-10-16

-- Write your SQL here
with ct1 as(
SELECT customer_name, order_date, amount, RANK() OVER(PARTITION BY customer_name ORDER BY order_date) as rank_cus
from orders)
    SELECT customer_name, order_date, amount,
        CASE 
            WHEN rank_cus = 1 THEN 'New'
            ELSE 'Returning'
        END as order_type
    FROM ct1
    ORDER BY customer_name
