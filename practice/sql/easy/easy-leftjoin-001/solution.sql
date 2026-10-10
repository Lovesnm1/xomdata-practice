-- Xom Data · Users who never took a ride
-- Problem: https://xomdata.com/practice/easy-leftjoin-001
-- Solved: 2026-10-10

-- Write your SQL here
SELECT user_name, joined_date
FROM users
LEFT JOIN rides on users.id = user_id
WHERE fare IS NULL
