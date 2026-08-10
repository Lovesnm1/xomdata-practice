-- Xom Data · Daily revenue including zero-sale days
-- Problem: https://xomdata.com/practice/hard-gapfill-001
-- Solved: 2026-08-10

WITH RECURSIVE ct1 as(
    SELECt min(date) as Min_Date, max(date) as Max_Date
    FROM daily_revenue
),
 dates AS (
    SELECT Min_Date as date
    FROM ct1

    UNION ALL

    SELECT date(date,'+1 day') 
    FROM dates
    WHERE date < (SELECT Max_Date FROM ct1)
)
    SELECT dates.date, SUM(COALESCE(amount,0)) as revenue
    FROM dates
    LEFT JOIN daily_revenue on dates.date = daily_revenue.date
    GROUP BY dates.date
    ORDER BY dates.date
