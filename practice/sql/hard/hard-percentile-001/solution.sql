-- Xom Data · Median and percentile salary by department
-- Problem: https://xomdata.com/practice/hard-percentile-001
-- Solved: 2026-08-07

WITH ct1 as (
    SELECT *,
     PERCENT_RANK() OVER(
        PARTITION BY department
        ORDER By salary
     ) as pr_rank
    FROM employees
),
ct2 as(
    SELECT
        *,
        ROW_NUMBER() OVER(
            PARTITION BY department
            ORDER BY ABS(pr_rank - 0.25), salary
        ) AS rn25,

        ROW_NUMBER() OVER(
            PARTITION BY department
            ORDER BY ABS(pr_rank - 0.50), salary
        ) AS rn50,

        ROW_NUMBER() OVER(
            PARTITION BY department
            ORDER BY ABS(pr_rank - 0.75), salary
        ) AS rn75
    FROM ct1
) 
    SELECT department,
        MAX(CASE
            WHEN rn25 = 1 THEN salary
        END) as p25,
        MAX(CASE
            WHEN rn50 = 1 THEN salary
        END) as p50,
        MAX(CASE
            WHEN rn75 = 1 THEN salary
        END) as p75
    FROM ct2
    GROUP BY department
    ORDER BY department ASC
