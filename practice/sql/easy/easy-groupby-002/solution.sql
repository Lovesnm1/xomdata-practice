-- Xom Data · Revenue by product category
-- Problem: https://xomdata.com/practice/easy-groupby-002
-- Solved: 2026-08-09

-- Viết SQL của bạn ở đây
SELECT category, SUM(amount) as total_revenue
FROM sales
GROUP BY category
