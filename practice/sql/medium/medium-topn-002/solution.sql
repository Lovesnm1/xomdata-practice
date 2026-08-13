-- Xom Data · Top three sellers per category
-- Problem: https://xomdata.com/practice/medium-topn-002
-- Solved: 2026-08-13

-- Viết SQL của bạn ở đây
WITH CT1 AS(
    SELECT category,
    product_name,
    units_sold,
    DENSE_RANK() OVER(
        PARTITION BY category
        ORDER BY units_sold desc, product_name
    ) as rank_in_cat
    FROM menu_sales
)
    SELECT category, product_name, units_sold
    FROM CT1
    WHERE rank_in_cat <=3
