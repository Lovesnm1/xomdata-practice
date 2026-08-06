-- Xom Data · Classify student academic performance
-- Problem: https://xomdata.com/practice/medium-case-124
-- Solved: 2026-08-06

WITH ct1 as(
    SELECT full_name, student_code,
           AVG(final_score) as avg_score
    FROM students
    JOIN scores on students.id = student_id
    GROUP BY student_code
    ORDER BY avg_score DESC
    LIMIT 20
)
SELECT full_name, student_code,ROUND(avg_score,2) as avg_score,
    CASE
        WHEN avg_score >=9 THEN 'Excellent'
        WHEN avg_score >=8 THEN 'Good'
        WHEN avg_score >=7 THEN 'Fair'
        WHEN avg_score >=5 THEN 'Average'
        else 'Poor'
    END as grade,
    DENSE_RANK() OVER(
        ORDER BY avg_score DESC
    ) as class_rank
    FROM CT1
