-- Xom Data · Line totals from the price list
-- Problem: https://xomdata.com/practice/easy-join-003
-- Solved: 2026-08-15

-- Viết SQL của bạn ở đây
    SELECT product_name, quantity, quantity * price as line_total
    FROM products
    JOIN sale_items on products.id = product_id
