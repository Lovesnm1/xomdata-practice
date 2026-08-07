-- Xom Data · Products in a price range
-- Problem: https://xomdata.com/practice/easy-between-001
-- Solved: 2026-08-07

SELECT product_name, price
FRom products
WHERE price >=200 and price <=500
