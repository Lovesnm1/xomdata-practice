-- Xom Data · How far from the server's top
-- Problem: https://xomdata.com/practice/medium-winagg-004
-- Solved: 2026-08-13

-- Viết SQL của bạn ở đây
    SELECT server, player_name, points,
    MAX(points) OVER(
        PARTITION BY server
    ) - points as gap_to_top
    FROM players
    ORDER BY server, gap_to_top, player_name
