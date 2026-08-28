-- Xom Data · Today's showtimes in time order
-- Problem: https://xomdata.com/practice/easy-join-004
-- Solved: 2026-08-28

-- Viết SQL của bạn ở đây
    Select start_time, title, screen
    FROM movies
    JOIN showtimes on movies.id = movie_id
    ORDER BY start_time,title
