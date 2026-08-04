-- Xom Data · Top 2 salespeople by sales each month
-- Problem: https://xomdata.com/practice/expert-final-multi-007
-- Solved: 2026-08-04

WITH total_revenue as(
    SELECT
        month,
        employee_id,
        SUM(revenue) AS total_sales
    FROM sales
    GROUP BY month, employee_id
), ranked as(
    SELECT month,employee_id, full_name, 
    DENSE_RANK() OVER
        (
            PARTITION BY month
            ORDER BY total_sales DESC
        ) as hang,
    total_sales
    FROM employees e
    INNER JOIN total_revenue t on e.id = t.employee_id
)
SELECT month,hang, employee_id, full_name, total_sales
FROM ranked
WHERE hang <=2
ORDER BY month, hang, employee_id
