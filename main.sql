use leetcode;

-- show table
SELECT
    *
FROM
    Activity;

-- Queries here
WITH T_LoggedBack AS (
    SELECT
        DATEDIFF(MAX(event_date), MIN(event_date)) = 1 isLoggedBack
    FROM
        Activity
        LEFT JOIN (
            SELECT
                player_id,
                event_date,
                ROW_NUMBER() OVER(
                    PARTITION BY player_id
                    ORDER BY
                        event_date
                ) <= 2 mask
            FROM
                Activity
        ) as m USING(player_id, event_date)
    WHERE
        mask != 0
    GROUP BY
        player_id
)
SELECT
    ROUND(
        SUM(isLoggedBack) / (
            SELECT
                COUNT(DISTINCT player_id)
            FROM
                Activity
        ),
        2
    ) fraction
FROM
    T_LoggedBack;