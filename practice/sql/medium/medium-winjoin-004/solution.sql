-- Xom Data · The same customer's previous order
-- Problem: https://xomdata.com/practice/medium-winjoin-004
-- Solved: 2026-08-13

-- Viết SQL của bạn ở đây
SELECT member_name, purchase_date, amount,
        LAG(amount) OVER(
            PARTITION BY member_name
            ORDER BY purchase_date
        ) as prev_amount
FROM members
join purchases on members.id = purchases.member_id
