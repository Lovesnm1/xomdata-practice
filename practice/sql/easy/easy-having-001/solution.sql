-- Xom Data · Categories full enough for the homepage
-- Problem: https://xomdata.com/practice/easy-having-001
-- Solved: 2026-08-07

-- Viết SQL của bạn ở đây
WITH ct1 as(
     SELECT category, 
     COUNT() as num_products
     FROM products
     GROUP BY category
)
    SELECT category,  num_products
     FROM ct1
     WHERE num_products >=3
     ORDER BY category
