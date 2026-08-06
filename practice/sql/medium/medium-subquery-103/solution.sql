-- Xom Data · Products more expensive than the category average
-- Problem: https://xomdata.com/practice/medium-subquery-103
-- Solved: 2026-08-06

WITH ct1 as(
    SELECT category as loai,
        AVG(price) as avg_price
    FROM products
    GROUP BY loai
)
SELECT product_name, category, price, 
    price - avg_price as diff_from_avg,
    ROUND(( price - avg_price )*100.0 / avg_price,2) as pct_above
FROM products
JOIN ct1  on products.category = ct1.loai
WHERE price > avg_price
ORDER BY pct_above DESC, product_name
