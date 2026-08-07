-- Xom Data · Sizing parcels by weight
-- Problem: https://xomdata.com/practice/easy-case-002
-- Solved: 2026-08-07

-- Viết SQL của bạn ở đây
SELECT parcel_code, weight_kg,
      CASE
        When weight_kg > 20 THEN 'Large'
        WHEN weight_kg >=5 THEN 'Medium'
        else 'Small'
      End as size_label
FROM parcels
