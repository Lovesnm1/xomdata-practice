-- Xom Data · Multi-level profit margin analysis
-- Problem: https://xomdata.com/practice/hard-multicte-001
-- Solved: 2026-08-10

WITH ct1 as(
    SELECT category, name, 
        SUM(quantity * price) AS revenue,
        SUM(quantity * unit_cost) as cost,
        SUM(quantity * (price -unit_cost)) as profit
        FROM products
        JOIN orders on id = product_id
        GROUP BY category, name
)
    SELECT category, name as product_name, revenue, cost, profit,
        ROUND(profit * 100.0 / revenue,2) as margin_pct,
        DENSE_RANK() OVER(
            PARTITION BY category
            ORDER BY profit DESC
        ) as rank_in_cat,
        ROUND(profit*100.0 /
        MAX(profit) OVER(
            PARTITION BY category
        ),2) as pct_of_top_in_cat
    FROM ct1
    ORDER BY category, rank_in_cat, product_name
