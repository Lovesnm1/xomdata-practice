-- Xom Data · Distance from the class average
-- Problem: https://xomdata.com/practice/medium-winagg-003
-- Solved: 2026-08-14

-- Viết SQL của bạn ở đây
    SELECT class_name, student_name, score,
    ROUND(score - AVG(score) over(
        PARTITION BY class_name
    ),2) as diff_from_avg
    from scores
    ORDER BY class_name, student_name
