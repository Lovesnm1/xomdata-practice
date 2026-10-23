-- Xom Data · Does anyone return the following week
-- Problem: https://xomdata.com/practice/hard-retention-003
-- Solved: 2026-10-23

WITH CT1 AS(
    SELECT customer_id, ((order_date)::date - '2024-01-01')/7 +1 as week_num
    FROM orders
),
ct2 as(
    SELECT customer_id, min(week_num) as cohort_week
    fROm ct1
    GROUP BY customer_id
),
ct3 as(
    SELECT *, LEAD(week_num) OVER(PARTITION BY customer_id) as hehe
    FROM ct1
),
CT4 as(
    SELECT week_num as cohort_week, COUNT(*) FILTER(where hehe-1 = week_num)
    FROM ct3
    GROUP BY week_num
),
result1 as(
    SELECT cohort_week, COUNT(*) as cohort_size
    FROM ct2
    GROUP BY cohort_week
)
    SELECT r.cohort_week, cohort_size, count as retained_next_week
    FROM result1 r
    JOIN ct4 on  r.cohort_week = ct4.cohort_week
    ORDER BY r.cohort_week
