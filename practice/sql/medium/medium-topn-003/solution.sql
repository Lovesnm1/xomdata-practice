-- Xom Data · Shift bonus for every top performer
-- Problem: https://xomdata.com/practice/medium-topn-003
-- Solved: 2026-08-14

WITH CT1 AS(
    SELECT store,
    staff_name,
    orders_served,
    RANK() OVER(
        PARTITION BY store
        ORDER BY orders_served DESC
    ) as rank_in_store
    FROM shift_stats
)
    SELECT store, staff_name,
    orders_served
    FROM CT1
    WHERE rank_in_store = 1
    ORDER BY store, staff_name
