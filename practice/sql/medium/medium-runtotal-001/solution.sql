-- Xom Data · Class fund running total by day
-- Problem: https://xomdata.com/practice/medium-runtotal-001
-- Solved: 2026-08-17

-- Viết SQL của bạn ở đây
    SELECT collect_date, amount,
    SUM(amount) OVER(
        ORDER BY collect_date
    ) as running_total
    FROM fund_log
