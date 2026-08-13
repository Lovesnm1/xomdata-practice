-- Xom Data · Valedictorian, salutatorian, and the score gap
-- Problem: https://xomdata.com/practice/medium-topn-006
-- Solved: 2026-08-13

with ct1 as(
    SELECT class_name,
    student_name,score,
    RANK() OVER(
        PARTITION BY class_name
        ORDER BY score DESC, student_name
    ) as position,
    LAG(score) OVER(
        PARTITION BY class_name
        ORDER BY score DESC
    ) as diem_trc
    FROM students
)
    SELECT class_name, position, student_name,
    score, 
    CASE
        WHEN diem_trc IS NULL THEN '0' 
        ELSE  diem_trc - score 
    END as behind_top
    FROM ct1
    WHERE position <=2
