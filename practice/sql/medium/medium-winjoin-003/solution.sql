-- Xom Data · Each aisle's best seller
-- Problem: https://xomdata.com/practice/medium-winjoin-003
-- Solved: 2026-10-15

-- Write your SQL here
WITH CT1 as(
    SELECT product_name, category_id, units_sold,
            RANK() OVER( PARTITION BY category_id
                        ORDER BY units_sold DESC, product_name) as rank_prod
    FROM products
)
 SELECT category_name, product_name, units_sold
 FROM ct1
 JOIN categories on ct1.category_id = categories.id
 WHERE rank_prod = 1
 ORDER BY category_name
