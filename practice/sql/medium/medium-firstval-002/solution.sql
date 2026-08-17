-- Xom Data · First purchase date next to every order
-- Problem: https://xomdata.com/practice/medium-firstval-002
-- Solved: 2026-08-17

-- Viết SQL của bạn ở đây
    SELECT customer_name, order_date, amount,
    MIN(order_date) OVER(
        PARTITION BY customer_name
    ) as first_order_date
    FROM orders
