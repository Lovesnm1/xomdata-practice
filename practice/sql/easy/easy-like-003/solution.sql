-- Xom Data · Books about data
-- Problem: https://xomdata.com/practice/easy-like-003
-- Solved: 2026-10-18

SELECT title, author
FROM books
WHERE title ILIKE '%data%'
