-- Xom Data · Revenue rank of each category
-- Problem: https://xomdata.com/practice/medium-rank-003
-- Solved: 2026-08-17

-- Viết SQL của bạn ở đây
    SELECT category, SUM(amount) as total_revenue,
    RANK() OVER(
        ORDER BY SUM(amount) DESC
    ) as revenue_rank
    FROM sales
    GROUP BY category
    ORDER BY revenue_rank, category
