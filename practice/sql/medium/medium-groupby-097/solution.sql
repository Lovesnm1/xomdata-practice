-- Xom Data · Top 10 most-engaged posts
-- Problem: https://xomdata.com/practice/medium-groupby-097
-- Solved: 2026-10-08

WITH ct1 as(
    SELECT full_name, post_type, post_date, 
        like_count+comment_count+share_count as total_interactions
    FROM users
    JOIN posts on users.id = user_id
)
SELECT full_name, post_type, post_date,total_interactions,
    RANK() OVER(ORDER BY total_interactions DESC) as overall_rank,
    ROW_NUMBER() OVER(PARTITION BY full_name ORDER BY total_interactions DESC, post_date) as rank_in_author,
    ROUND(total_interactions*100.0 / MAX(total_interactions)
    OVER(),2) as
    pct_of_top
FROM ct1
ORDER BY overall_rank ASC, full_name ASC, rank_in_author ASC
LIMIT 10
