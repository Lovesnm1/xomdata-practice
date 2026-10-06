-- Xom Data · Booking count per branch
-- Problem: https://xomdata.com/practice/easy-leftjoin-003
-- Solved: 2026-10-06

-- Write your SQL here
SELECT branch_name, COUNT(bookings.id) as num_bookings
FROM branches
LEFT JOIN bookings on branches.id = branch_id
GROUP BY branch_name
