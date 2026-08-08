-- Xom Data · Which sales channel leads in orders
-- Problem: https://xomdata.com/practice/easy-groupby-004
-- Solved: 2026-08-08

-- Viết SQL của bạn ở đây
SELECT channel, count() as num_orders
FROM orders
GROUP BY channel
ORDER BY num_orders DESC, channel
