-- Xom Data · Summary of issues to handle
-- Problem: https://xomdata.com/practice/medium-union-175
-- Solved: 2026-08-07

 With ct1 as (
    SELECT 'Complaint' as type, count() as quantity
    FROM complaints
    WHERE status = 'Pending'
     
    UNION ALL

    SELECT 'Cancelled Order' as type,count() as quantity
    FROM orders
    WHERE status = 'Cancelled'

    UNION ALL
    SELECT 'Out of Stock Product' as type,count() as quantity
    FROM products
    WHERE status = 'Out of Stock'
 ),
 ct2 as(
    SELECT type, COALESCE(quantity,0) as quantity,
        quantity*100.0 / SUM(quantity) OVER(
        ) as pct_of_total,
        RANK() OVER(
            ORDER BY quantity DESC
        ) as rank_pos
    FROM ct1
 )
  SELECT type, quantity,
        ROUND(pct_of_total,2) as pct_of_total, rank_pos,
        ROUND(SUM(pct_of_total) OVER(
            ORDER BY rank_pos, type
            ),2) as cumulative_pct
  FROM ct2
