-- Xom Data · The customer's total next to every order
-- Problem: https://xomdata.com/practice/medium-winjoin-002
-- Solved: 2026-08-17

-- Viết SQL của bạn ở đây
        SELECT customer_name, order_date, amount,
        SUM(amount) OVER(
            PARTITION BY customer_name
        ) as customer_total
        FROM customers 
        JOIN orders on customers.id = customer_id
        ORDER BY customer_name, order_date
