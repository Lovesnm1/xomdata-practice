-- Xom Data · Ticket statuses guests can read
-- Problem: https://xomdata.com/practice/easy-join-005
-- Solved: 2026-08-29

-- Viết SQL của bạn ở đây
    SELECT ticket_code, status_name
    FROM statuses
    JOIN tickets on code = status_code
