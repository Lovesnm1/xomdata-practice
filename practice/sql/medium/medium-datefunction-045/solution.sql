-- Xom Data · Transaction count and amount by month
-- Problem: https://xomdata.com/practice/medium-datefunction-045
-- Solved: 2026-08-07

WITH ct1 as(
    SELECT strftime('%Y-%m',transaction_date) as month,
            COUNT() as transaction_count,
            SUM(amount) as total_amount,
            LAG(SUM(amount)) OVER(
                ORDER BY strftime('%Y-%m',transaction_date)
            ) as tong_ttruoc
    FROM transactions
    GROUP BY month
)
    SELECT month, transaction_count, total_amount, 
    total_amount - tong_ttruoc as mom_delta
    FROM ct1
    ORDER BY month
