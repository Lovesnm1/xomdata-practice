-- Xom Data · Who showed up in two consecutive months
-- Problem: https://xomdata.com/practice/medium-active-002
-- Solved: 2026-10-22

WITH ct1 as(
    SELECT customer_id, TO_CHAR(order_date::date, 'YYYY-MM') as order_date
    FROM orders
    WHERE order_date >= '2024-03-01' and order_date <='2024-04-30'
),
ct2 AS(
    SELECT DISTINCT order_date, customer_id,
        LAG(order_date) OVER(PARTITION BY customer_id) as test
    FROM ct1
)
    SELECT customer_id
    FROM ct2
    WHERE test = '2024-03' and order_date = '2024-04'
