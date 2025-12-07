use leetcode;

-- show table
SELECT
    *
FROM
    Activity;

-- Queries here
SELECT
    machine_id,
    ROUND(AVG(processing_time), 3) as 'processing_time'
FROM
    (
        SELECT
            machine_id,
            process_id,
            MAX(timestamp) - MIN(timestamp) as "processing_time"
        FROM
            Activity
        GROUP BY
            machine_id,
            process_id
    ) AS T_agg1
GROUP BY
    machine_id
