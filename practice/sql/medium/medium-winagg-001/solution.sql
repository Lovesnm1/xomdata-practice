-- Xom Data · Department total next to each person
-- Problem: https://xomdata.com/practice/medium-winagg-001
-- Solved: 2026-08-13

-- Viết SQL của bạn ở đây
    SELECT department, rep_name,
    revenue, SUM(revenue) OVER(
        PARTITION BY department
    ) as dept_total
    FROM deals
    ORDER BY department, rep_name
