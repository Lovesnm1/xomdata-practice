-- Xom Data · Each category's slice of revenue
-- Problem: https://xomdata.com/practice/medium-winagg-009
-- Solved: 2026-08-14

-- Viết SQL của bạn ở đây
    SELECT category, SUM(amount) as total_revenue,
    round(SUM(amount)*100.0/ SUM(SUM(amount)) OVER(),2) as pct_share
    FROM  sales
    GROUP BY category
    ORDER BY total_revenue DESC, category
