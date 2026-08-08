-- Xom Data · Top salary in each department
-- Problem: https://xomdata.com/practice/easy-groupby-005
-- Solved: 2026-08-08

-- Viết SQL của bạn ở đây
SELECT department, MAX(salary) as top_salary
FROM employees
GROUP BY department
