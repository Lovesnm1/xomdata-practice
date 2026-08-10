-- Xom Data · YoY and QoQ sales growth
-- Problem: https://xomdata.com/practice/hard-yoy-001
-- Solved: 2026-08-10

WITH cte1 as(
    SELECT year, quarter, revenue, 
        LAG(revenue) OVER() as prev_quarter_revenue
    FROM quarterly_sales
    ORDER BY year, quarter
),
dem_quy as(
    SELECT year as nam, count(quarter) as quy_nam
    FROm quarterly_sales
   GROUP BY nam
)
SELECT year, quarter, revenue, prev_quarter_revenue,
    CASE 
        WHEN LAG(quy_nam) OVER(
            PARTITION BY quarter
        ) = 4 
    THEN LAG(revenue) OVER(
        PARTITION BY quarter
    ) 
    END as prev_year_revenue,
    ROUND((revenue - prev_quarter_revenue)*100.0 / prev_quarter_revenue,2) as qoq_pct,
    CASE 
     WHEN LAG(quy_nam) OVER(
            PARTITION BY quarter
        ) = 4 
    THEN ROUND((revenue - LAG(revenue) OVER(
        PARTITION BY quarter
    ))*100.0 / LAG(revenue) OVER(
        PARTITION BY quarter
    ),2)
    END AS yoy_pct
FROM cte1 
JOIN dem_quy ON year = nam
ORDER BY year, quarter
