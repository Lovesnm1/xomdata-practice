-- Xom Data · Candidates not yet interviewed
-- Problem: https://xomdata.com/practice/medium-leftjoin-031
-- Solved: 2026-08-06

SELECT full_name,email,application_date,
    DENSE_RANK() OVER(
        ORDER BY application_date, full_name
    ) as queue_position ,
    ROUND(PERCENT_RANK() OVER (
    ORDER BY application_date, full_name
    )*100.0,2) as older_than_pct
FROM candidates 
LEFT JOIN interviews on candidates.id = candidate_id
WHERE candidate_id IS NULL
