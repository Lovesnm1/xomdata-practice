-- Xom Data · Ward headcount next to each nurse
-- Problem: https://xomdata.com/practice/medium-winagg-005
-- Solved: 2026-08-13

-- Viết SQL của bạn ở đây
    SELECT ward,
    nurse_name,
    COUNT() OVER(
        PARTITION BY ward
    ) as team_size
    FROM roster
    ORDER BY ward, nurse_name
