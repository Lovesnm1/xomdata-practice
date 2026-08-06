-- Xom Data · High-rated sellers with many orders
-- Problem: https://xomdata.com/practice/medium-having-019
-- Solved: 2026-08-06

WITH ct1 as(
    SELECT store_name, reputation_score,
        COUNT(seller_id) as order_count,
        DENSE_RANK() OVER(
            ORDER BY COUNT(seller_id) DESC
        ) as rank_by_orders
    FROM sellers 
    JOIN orders on sellers.id = seller_id
    GROUP BY store_name
)
SELECT store_name, reputation_score, order_count, 
    rank_by_orders,
    SUM(order_count) OVER(
        ORDER BY order_count DESC, store_name ASC
    ) as cumulative_orders
FROM ct1
WHERE order_count >=3 and reputation_score >=4.5
ORDER BY rank_by_orders, store_name
