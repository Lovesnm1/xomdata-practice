-- Xom Data · Line total for each item
-- Problem: https://xomdata.com/practice/easy-alias-001
-- Solved: 2026-10-31

-- Write your SQL here
SELECT shipment_code, product, quantity * unit_price as line_revenue
FROM shipment_items
