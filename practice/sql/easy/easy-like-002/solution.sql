-- Xom Data · Sales division employees
-- Problem: https://xomdata.com/practice/easy-like-002
-- Solved: 2026-10-13

-- Write your SQL here
SELECT employee_code, full_name
FROM employees
WHERE employee_code LIKE "SAL-%"
