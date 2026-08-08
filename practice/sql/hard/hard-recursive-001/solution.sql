-- Xom Data · Total payroll by org branch
-- Problem: https://xomdata.com/practice/hard-recursive-001
-- Solved: 2026-08-08

WITH 
   RECURSIVE dequy as(
        SELECT id as m_id, id as e_id 
        FROM employees

        UNION ALL

        SELECT  m_id, p.id as e_id 
        FROM employees p
        JOIN dequy nv ON p.manager_id = nv.e_id
    ),
    direct_rp as (
    SELECT  manager_id, count () as direct_reports
    FROM employees
    WHERE manager_id IS NOT NULL
    GROUP BY manager_id
)
,cte1 as(
    SELECT *, COUNT() as subtree_size,
    sum(salary) as subtree_salary
    FROM  employees
    JOIN dequy dq  on e_id = employees.id
    JOIN direct_rp dr on m_id =  dr.manager_id
    group by m_id
)
    SELECT id as manager_id, name as manager_name, direct_reports,
    subtree_size, subtree_salary
    FROM cte1
    ORDER BY subtree_salary DESC, manager_ID
