-- Xom Data · Average lifetime value by cohort
-- Problem: https://xomdata.com/practice/hard-ltv-001
-- Solved: 2026-10-23

WITH ct1 as(
    SELECT customer_id, MIN(TO_CHAR(order_date::date,'YYYY-MM')) as first_buy
    FROM orders
    GROUP BY customer_id
),
CT2 as(
    SELECT customer_id, SUM(amount) as total_customer
    FROM orders
    GROUP BY customer_id
)
    SELECT first_buy as cohort_month,
    count(*) as cohort_size,
    ROUND(AVG(total_customer),2) as avg_ltv
    FROM CT1 
    JOIN ct2 on ct1.customer_id = ct2.customer_id
    GROUP BY first_buy
    ORDER BY cohort_month ASC
