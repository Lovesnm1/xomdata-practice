-- Xom Data · The current price of each product
-- Problem: https://xomdata.com/practice/medium-dedup-002
-- Solved: 2026-10-15

WITH ct1 as(
SELECT product_name, price,effective_date, 
    RANK() OVER(PARTITION BY product_name
                ORDER BY effective_date DESC) as lastest_update
FROM price_history
)
    SELECT product_name, price, effective_date
    FROM CT1
    WHERE lastest_update = 1
    ORDER BY product_name
