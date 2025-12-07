use leetcode;

-- show table
SELECT
    *
FROM
    Activity;

-- Queries here
SELECT
    ROUND(
        SUM(b.player_id IS NOT NULL) / COUNT(DISTINCT a.player_id),
        2
    ) fraction
FROM
    Activity a
    LEFT JOIN (
        SELECT
            player_id,
            MIN(event_date) firstLoginDate
        FROM
            Activity
        GROUP BY
            player_id
    ) b ON a.player_id = b.player_id
    AND a.event_date = DATE_ADD(b.firstLoginDate, INTERVAL 1 DAY)
