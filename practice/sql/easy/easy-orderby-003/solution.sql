-- Xom Data · Most watched videos this week
-- Problem: https://xomdata.com/practice/easy-orderby-003
-- Solved: 2026-10-13

-- Write your SQL here
SELECT video_title, weekly_views
FROM videos
ORDER BY weekly_views DESC, video_title
