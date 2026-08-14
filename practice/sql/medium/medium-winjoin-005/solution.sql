-- Xom Data · This invoice's share of the client's spend
-- Problem: https://xomdata.com/practice/medium-winjoin-005
-- Solved: 2026-08-14

-- Viết SQL của bạn ở đây
    SELECT client_name, invoice_code, amount,
    ROUND(amount*100.0 /SUM(amount) OVER(
        PARTITION BY client_name
    ),2) as pct_of_client
    FROM clients
    JOIN invoices on clients.id = invoices.client_id
    ORDER BY client_name, amount desc, invoice_code
