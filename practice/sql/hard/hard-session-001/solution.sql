-- Xom Data · Sessionize logins with a 30-minute gap
-- Problem: https://xomdata.com/practice/hard-session-001
-- Solved: 2026-08-10

WITH CT1 as(
    SELECT *, event_at as geng, LAG(event_at) OVER(
            PARTITION BY user_id
            ORDER BY event_at,id
    ) as t1
    FROM events 
),
CT2 as(
    SELECT *,
        CASE 
            WHEN t1 is NULL then 1
            WHEN (julianday(geng) - julianday(t1)) * 1440  > 30 then 1
            Else 0 
        END as gap
    FROM CT1
),
CT3 as(
    SELECT *,
        SUM(gap) OVER(
            PARTITION BY user_id
            ORDER BY event_at,id
            ROWS UNBOUNDED PRECEDING
        ) as session_seq
    FROM CT2
)
    SELECT user_id, session_seq,
           count() as n_events,
           MIN(event_at) as session_start,
           MAX(event_at) as session_end,
            ROUND(
            (unixepoch(MAX(event_at)) - unixepoch(MIN(event_at))) 
            / 60.0, 1)  AS duration_min
    FROM CT3
    GROUP BY user_id,session_seq
    ORDER BY user_id,session_seq
