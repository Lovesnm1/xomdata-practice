-- Xom Data · Total spend per member
-- Problem: https://xomdata.com/practice/easy-leftjoin-002
-- Solved: 2026-08-23

-- Viết SQL của bạn ở 
with ct1 as(
    SELECT member_id,sum(amount) as total
    FROM bills
    GROUP BY member_id
)
    SELECT member_name, COALESCE(total,0) as total_spent
    FROM members
    LEFT JOIN ct1 on ct1.member_id = members.id
    ORDER BY member_name
