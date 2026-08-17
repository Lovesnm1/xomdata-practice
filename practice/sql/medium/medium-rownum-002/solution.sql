-- Xom Data · Intake sequence per warehouse
-- Problem: https://xomdata.com/practice/medium-rownum-002
-- Solved: 2026-08-17

-- Viết SQL của bạn ở đây
    SELECT warehouse,
    RANK() OVER(
        PARTITION BY warehouse
        ORDER BY entry_date, product
    ) as entry_no, product, entry_date
    FROM stock_entries
