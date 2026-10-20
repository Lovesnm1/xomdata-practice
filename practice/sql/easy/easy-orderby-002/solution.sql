-- Xom Data · Room price list by tier
-- Problem: https://xomdata.com/practice/easy-orderby-002
-- Solved: 2026-10-20

-- Write your SQL here
WITH CT1 as (
SELECT room_no, room_type, price,
    RANK() OVER(PARTITION BY room_type ORDER BY price) as rank_room
FROM rooms
)
    SELECT room_no, room_type, price
    FROM ct1
    ORDER BY room_type,price, room_no
