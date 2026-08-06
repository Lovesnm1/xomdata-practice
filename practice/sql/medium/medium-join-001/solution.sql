-- Xom Data · Customer spending per order
-- Problem: https://xomdata.com/practice/medium-join-001
-- Solved: 2026-08-06

WITH ct1 as(
    SELECT full_name, 
    COUNT() as order_count,
    SUM(total_amount) as total_spending,
    AVG(total_amount) as avg_order_value
    FROM orders
    JOIN customers on customers.id = customer_id
    GROUP BY customer_id
)
SELECT full_name, order_count, total_spending, avg_order_value,
    DENSE_RANK() OVER(
        ORDER BY total_spending DESC, full_name
    ) as spending_rank
FROM ct1
