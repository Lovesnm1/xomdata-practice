-- Xom Data · Book count and average price by genre
-- Problem: https://xomdata.com/practice/medium-coalesce-040
-- Solved: 2026-08-07

WITH ct1 as(
    SELECT genre_id,
        count() as book_count,
        AVG(price) as avg_price,
        MIN(price) as min_price,
        MAX(price) as max_price
    FROM books
    GROUP BY genre_id
)
    SELECT genre_name, 
        COALESCE(book_count,0) as book_count,
        COALESCE(avg_price,0) as avg_price,
        COALESCE(min_price,0) as min_price,
        COALESCE(max_price,0) as max_price,
        COALESCE(max_price-min_price,0) as price_range,
        RANK() OVER(
            ORDER BY COALESCE(book_count,0) DESC
        ) as coverage_rank,
        NTILE(3) OVER(
            ORDER BY COALESCE(book_count,0) DESC, genre_name
        ) as library_focus
    FROM genres
    LEFT JOIN ct1 on genres.id = ct1.genre_id
