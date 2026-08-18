-- Xom Data · Customers reaching the loyalty milestone
-- Problem: https://xomdata.com/practice/easy-having-002
-- Solved: 2026-08-18

-- Viết SQL của bạn ở đây
    SELECT customer_name, 
    SUM(amount) as total_spent
    FROM purchases
    GROUP BY customer_name
    HAVING total_spent >= 5000000
    ORDER BY total_spent DESC, customer_name
