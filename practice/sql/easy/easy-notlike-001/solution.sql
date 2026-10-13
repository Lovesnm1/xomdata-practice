-- Xom Data · Excluding internal accounts from the report
-- Problem: https://xomdata.com/practice/easy-notlike-001
-- Solved: 2026-10-13

-- Write your SQL here
SELECT email, plan
FROM signups
WHERE email not like "%@corp.io"
