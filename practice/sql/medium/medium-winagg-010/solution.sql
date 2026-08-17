-- Xom Data · Regional payroll with shares
-- Problem: https://xomdata.com/practice/medium-winagg-010
-- Solved: 2026-08-17

-- Viết SQL của bạn ở 
    SELECT region, staff_name, salary,
    SUM(salary) OVER(
        PARTITION BY region
    ) as region_total,
    ROUND(salary*100.0 / SUM(salary) OVER(
        PARTITION BY region
    ),2) as pct_of_region
    FROM payroll
    ORDER BY region, salary DESC,staff_name
