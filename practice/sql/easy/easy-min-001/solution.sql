-- Xom Data · Cheapest domestic fare
-- Problem: https://xomdata.com/practice/easy-min-001
-- Solved: 2026-10-13

-- Write your SQL here
SELECT MIN(price) as lowest_price
FROM flights
WHERE route_type == "Domestic"
