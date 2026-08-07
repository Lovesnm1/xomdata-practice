-- Xom Data · Revenue pivoted by product type
-- Problem: https://xomdata.com/practice/hard-pivot-001
-- Solved: 2026-08-07

SELECT strftime('%Y-%m',sale_date) as month,
       SUM(
            CASE
             WHEN category = 'Electronics' THEN amount
             else 0
            END
       ) as electronics,
       SUM(
            CASE
             WHEN category = 'Clothing' THEN amount
             else 0
            END
       ) as clothing,
       SUM(
            CASE
             WHEN category = 'Food' THEN amount
             else 0
            END
       ) as food,
       SUM(amount) as total
    FROM sales
    GROUP BY month
    ORDER BY month ASC
