-- Xom Data · Classify products by sales velocity
-- Problem: https://xomdata.com/practice/medium-case-110
-- Solved: 2026-08-06

WITH table1 as(
    SELECT name, categories, 
        SUM(quantity) OVER(
            PARTITION BY name
        ) as total_sold,
        (SUM(quantity) OVER(
            PARTITION BY categories
        )) as total_cat
    FROM products
    JOIN transactions ON products.id = product_id
)
SELECT DISTINCT name, categories, total_sold, 
    CASE
        WHEN total_sold >= 100 THEN 'Best Seller'
        WHEN total_sold >=50 THEN 'Average'
        else 'Slow Mover'
        END as classification,
    DENSE_RANK() OVER(
        PARTITION BY categories
        ORDER BY total_sold DESC
    ) as rank_in_cat,
    ROUND(total_sold*100.0/total_cat,2) as pct_of_cat_total
FROM table1
ORDER BY categories, rank_in_cat ASC , name
