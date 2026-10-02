-- Xom Data · Deal count per client
-- Problem: https://xomdata.com/practice/easy-join-007
-- Solved: 2026-10-02

-- Write your SQL here
SELECT client_name, count() as num_deals
FROM clients
JOIN deals on clients.id = client_id
GROUP BY client_id
ORDER BY num_deals DESC, client_name
