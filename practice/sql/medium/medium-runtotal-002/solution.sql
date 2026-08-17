-- Xom Data · Each customer's cumulative spending
-- Problem: https://xomdata.com/practice/medium-runtotal-002
-- Solved: 2026-08-17

-- Viết SQL của bạn ở 
    SELECT customer_name, month, spend,
    SUM(spend) OVER(
        PARTITION BY customer_name
        ORDER BY month
    ) AS cumulative_spend
    FROM wallet_monthly
