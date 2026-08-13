-- Xom Data · Above or below the department norm
-- Problem: https://xomdata.com/practice/medium-winagg-007
-- Solved: 2026-08-13

WITH CT1 AS(
    SELECT department,
    full_name,
    salary,
    AVG(salary) OVER(
        PARTITION BY department
    ) as avg_Cat
    FROM employees
)
    SELECT department, full_name, salary,
    CASE
        WHEN salary > avg_cat THEN 'Above'
        WHEN salary = avg_cat then 'Equal'
        else 'Below'
    END as position_label
    FROM CT1
    ORDER BY department, full_name
