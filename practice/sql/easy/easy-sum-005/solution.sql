-- Xom Data · Total spend for one budget category
-- Problem: https://xomdata.com/practice/easy-sum-005
-- Solved: 2026-10-14

-- Write your SQL here
SELECT SUM(amount) as total_spent
FROM expenses
WHERE category == "Marketing"
