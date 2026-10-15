-- Xom Data · Latest readings and over-limit alerts
-- Problem: https://xomdata.com/practice/medium-dedup-003
-- Solved: 2026-10-15

-- Write your SQL here
WITH CT1 as(
    SELECT sensor_id, reading_date, temp_c,
        RANK() OVER( PARTITION BY sensor_id
                    ORDER BY reading_date DESC) as lastest_update
    FROM readings
)
    SELECT sensor_name, reading_date, temp_c , max_temp,
    CASE
        WHEN temp_c > max_temp THEN 'Alert'
        ELSE 'Normal'
    END as status
    FROM sensors
    JOIN ct1 on sensors.id = sensor_id
    WHERE lastest_update = 1
    ORDER BY sensor_name
