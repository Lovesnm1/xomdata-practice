-- Xom Data · Top two films per genre, rank included
-- Problem: https://xomdata.com/practice/medium-topn-005
-- Solved: 2026-08-13

WITH ct1 as(
    SELECT genre,
    RANK() OVER(
        PARTITION BY genre
        ORDER BY revenue DESC, title
    ) as rank_in_genre,
    title,
    revenue
    FROM box_office
)
    SELECT *
    FROM ct1
    WHERE rank_in_genre <=2
