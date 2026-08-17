-- Xom Data · Visit number within each day
-- Problem: https://xomdata.com/practice/medium-rownum-003
-- Solved: 2026-08-17

-- Viết SQL của bạn ở đây
    SELECT checkin_date,
    RANK() OVER(
        PARTITION BY checkin_date
        ORDER BY checkin_time, member_name
    ) as visit_no,
     member_name, checkin_time
    FROM checkins
