-- Xom Data · Peak-hour electricity record
-- Problem: https://xomdata.com/practice/easy-max-002
-- Solved: 2026-10-17

-- Write your SQL here
SELECT MAX(kwh) as peak_load
FROM power_readings
WHERE period = 'Peak'
