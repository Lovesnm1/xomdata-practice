-- Xom Data · Price tiers for rooms on sale
-- Problem: https://xomdata.com/practice/medium-denserank-001
-- Solved: 2026-08-17

-- Viết SQL của bạn ở đây
    SELECT room_no, price,
    DENSE_RANK() OVER(
        ORDER BY price DESC
    ) as price_tier
    from rooms 
    ORDER BY price_tier, room_no
