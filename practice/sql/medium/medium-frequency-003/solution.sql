-- Xom Data · Each Customer's Golden Month
-- Problem: https://xomdata.com/practice/medium-frequency-003
-- Solved: 2026-10-23

WITH CT1 AS(
SELECT customer_id, TO_CHAR(order_date::date,'YYYY-MM') as cohort_month
FROM orders
),
CT2 AS(
    SELECT customer_id, cohort_month as best_month, count(*) as orders_in_month
    FROM ct1
    GROUP BY customer_id, cohort_month
),
CT3 AS(
    SELECT customer_id, best_month, orders_in_month,
           ROW_NUMBER() OVER (
               PARTITION BY customer_id 
               ORDER BY orders_in_month DESC, best_month ASC
           ) as rn
    FROM CT2
)
    SELECT customer_id, best_month, orders_in_month
    FROM ct3
    WHERE rn = 1
    ORDER BY customer_id
