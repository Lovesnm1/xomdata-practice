-- Xom Data · Delivery performance by size class
-- Problem: https://xomdata.com/practice/medium-case-160
-- Solved: 2026-08-13

WITH CT1 AS(
        SELECT vehicle_type, capacity_tons,
        COUNT() as shipment_count,
        CASE
            WHEN trucks.capacity_tons >= 10 THEN 'Large Truck'
            WHEN trucks.capacity_tons >= 5 THEN 'Medium Truck'
            ELSE 'Small Truck'
        END AS size_class,
        SUM(
            CASE
                WHEN deliveries.results = 'success' THEN 1
                ELSE 0
            END
        ) AS delivered,
            SUM(
                CASE
                    WHEN deliveries.results = 'success' THEN 1
                    ELSE 0
                END
            ) * 100.0 / COUNT(shipments.id) AS delivery_rate
        FROM trucks
        JOIN shipments
            ON trucks.id = shipments.truck_id
        JOIN deliveries
            ON shipments.id = deliveries.shipment_id
        GROUP BY
            vehicle_type
)
    SELECT vehicle_type, capacity_tons, shipment_count, size_class,
    delivered, ROUND(delivery_rate,2) as delivery_rate,
    RANK()  OVER(
        PARTITION BY size_class
        ORDER BY delivery_rate DESC
    ) as rank_in_size
    FROM CT1
    ORDER BY size_class, rank_in_size,vehicle_type
