-- Xom Data · Category price range next to each item
-- Problem: https://xomdata.com/practice/medium-winagg-008
-- Solved: 2026-08-13

-- Viết SQL của bạn ở đây
    SELECT category,
    product_name,
    price,
    MIN(price) OVER(
        PARTITION BY category
        ORDER BY price ASC
    ) as cat_min,
    MAX(price) OVER(
        PARTITION BY category
        ORDER BY price DESC
    ) as cat_max
    FROM products
    ORDER BY category, price, product_name
