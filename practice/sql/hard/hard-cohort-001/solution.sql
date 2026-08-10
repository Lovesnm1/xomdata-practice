-- Xom Data · Retention rate by signup-month cohort
-- Problem: https://xomdata.com/practice/hard-cohort-001
-- Solved: 2026-08-10

WITH SUps as(
    SELECT user_id, strftime('%Y-%m',signup_date) as signup_month
    FROM signups
),
Hdong as (
    SELECT DISTINCT user_id, strftime('%Y-%m',active_date) as active_month
    FROM activity
)
    SELECT signup_month, active_month,
        COUNt() as n_active
    FROM SUps 
    JOIN Hdong ON  SUps.user_id = Hdong.user_id
    WHERE active_month >= signup_month
    GROUP BY signup_month, active_month
    ORDER BY signup_month, active_month
