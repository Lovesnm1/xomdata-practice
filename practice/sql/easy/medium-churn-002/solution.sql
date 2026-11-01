-- Xom Data · Active or stopped subscription
-- Problem: https://xomdata.com/practice/medium-churn-002
-- Solved: 2026-11-01

SELECT sub_id, customer_id, 
    CASE
        WHEN end_date IS NULL or end_date >= '2024-06-30' THEN 'active'
        else 'stopped'
    END as status
FROM subscriptions
