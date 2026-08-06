-- Xom Data · Average score per subject
-- Problem: https://xomdata.com/practice/medium-groupby-027
-- Solved: 2026-08-06

WITH cte1 as (
SELECT subject_name,credits,
    COUNT(grades.id) as student_count,
    AVG(final_score) as avg_score,
    ROUND(AVG(CASE WHEN final_score >=5 THEN 1 ELSE 0 END)*100.0,2) as pass_rate
FROM subjects
JOIN grades on subjects.id = subject_id
GROUP BY subject_name
)
SELECT subject_name, credits, student_count, 
    ROUND(avg_score,2) as avg_score, pass_rate
    ,RANK()  OVER(
        ORDER BY avg_score DESC
    ) AS rank_by_avg
    ,NTILE(4) OVER(
        ORDER BY avg_score DESC,subject_name
    ) AS difficulty_quartile
FROM cte1
