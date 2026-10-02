-- Xom Data · Parcels bound for Denver
-- Problem: https://xomdata.com/practice/easy-join-002
-- Solved: 2026-10-02

-- Write your SQL here
SELECT tracking_code, recipient_name
FROM recipients
JOIN parcels on recipients.id = recipient_id
WHERE city = "Denver"
