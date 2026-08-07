-- Xom Data · Top 10 highest-paid employees and their leave days
-- Problem: https://xomdata.com/practice/medium-agg-127
-- Solved: 2026-08-07

WITH
  total_payrolls AS (
    SELECT
      employee_id,
      SUM(net_salary) AS total_received_salary
    FROM
      payroll
    GROUP BY
      employee_id
  ),
  total_leaves AS (
    SELECT
      employee_id,
      count() AS leave_count
    FROM
      leaves
    WHERE
      status = 'duyet'
    GROUP BY
      employee_id
  ),
  NVien_PBan as(
    SELECT employees.id as NVien_id, full_name, department_name,employee_code
    FROM employees
    JOIN departments ON department_id = departments.id
  )
  SELECT full_name, employee_code, department_name,
     total_received_salary, COALESCE(leave_count,0) as leave_count,
     ROUND(((total_received_salary - AVG(total_received_salary) OVER(
        PARTITION BY department_name)) * 100.0
        / 
      AVG(total_received_salary) OVER(
        PARTITION BY department_name
    )),2) as pct_above_dept_avg
    FROM total_payrolls t
    JOIN Nvien_Pban ON  t.employee_id = Nvien_id
    LEFT JOIN total_leaves l ON Nvien_id = l.employee_id
    ORDER BY total_received_salary DESC, employee_code
    LIMIT 10
