WITH t AS (
    SELECT
        machine_id,
        process_id,
        SUM(CASE WHEN activity_type='start' THEN timestamp ELSE 0 END) AS start_time,
        SUM(CASE WHEN activity_type='end' THEN timestamp ELSE 0 END) AS end_time
    FROM Activity
    GROUP BY machine_id, process_id
    ORDER BY machine_id, process_id
)
SELECT
    machine_id,
    ROUND(AVG(end_time-start_time), 3) AS processing_time
FROM t
GROUP BY machine_id
ORDER BY machine_id;
