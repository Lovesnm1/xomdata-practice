-- Xom Data · Employees paid above their department average
-- Problem: https://xomdata.com/practice/medium-subquery-110
-- Solved: 2026-10-08

WITH ct1 as (
    SELECT department_id, dept_name,
        AVG(salary) OVER(PARTITION BY department_id) as dept_avg_salary
    FROM departments
    JOIN employees on departments.id = department_id
)
SELECT DISTINCT(full_name), dept_name, salary, 
    ROUND(dept_avg_salary,0) as dept_avg_salary,
    ROUND((salary - dept_avg_salary)*100.0/dept_avg_salary,2) as premium_pct
FROM employees e 
JOIN ct1 on e.department_id = ct1.department_id
WHERE salary > dept_avg_salary
ORDER BY premium_pct DESC, dept_name, full_name
