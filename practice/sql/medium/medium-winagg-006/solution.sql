-- Xom Data · Each expense's share of the fund
-- Problem: https://xomdata.com/practice/medium-winagg-006
-- Solved: 2026-08-13

-- Viết SQL của bạn ở đây
    SELECT expense_name,
    amount,
    ROUND(amount*100.0 / SUM(amount) OVER(),2) as pct_of_total
    FROM fund_expenses
    ORDER BY amount DESC, expense_name
