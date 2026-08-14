-- Xom Data · Each device's next service date
-- Problem: https://xomdata.com/practice/medium-lead-001
-- Solved: 2026-08-14

-- Viết SQL của bạn ở đây
    SELECT device_code,
    service_date,
    LEAD(service_date) OVER(
        PARTITION BY device_code
       
    ) AS next_service
    FROM service_log
