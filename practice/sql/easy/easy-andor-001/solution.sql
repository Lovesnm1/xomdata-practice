-- Xom Data · Apartments matching the client's criteria
-- Problem: https://xomdata.com/practice/easy-andor-001
-- Solved: 2026-09-11

-- Write your SQL here
    SELECT listing_code, district, monthly_rent
    FROM apartments
    WHERE (district == "Brookline" or district == "District 3") and
    monthly_rent <=9000000
