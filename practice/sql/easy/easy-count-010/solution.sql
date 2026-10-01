-- Xom Data · Tickets still valid
-- Problem: https://xomdata.com/practice/easy-count-010
-- Solved: 2026-10-01

-- Write your SQL here
SELECT count() as valid_tickets
FROM tickets
WHERE status = "Valid"
