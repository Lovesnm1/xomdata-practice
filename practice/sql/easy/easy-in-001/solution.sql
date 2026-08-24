-- Xom Data · Customers in key cities
-- Problem: https://xomdata.com/practice/easy-in-001
-- Solved: 2026-08-24

-- Viết SQL của bạn ở đây
    SELECT customer_name, city
    FROM customers
    WHERE city = 'Hanoi' or city = 'Ho Chi Minh City' or city = 'Da Nang'
