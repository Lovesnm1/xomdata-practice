-- Xom Data · Display names on profile pages
-- Problem: https://xomdata.com/practice/easy-coalesce-001
-- Solved: 2026-08-08

-- Viết SQL của bạn ở đây
SELECT real_name, nickname,
        CASE
            WHEN nickname IS NOT NULL THEN nickname
            Else real_name
        END as display_name
    FROM profiles
