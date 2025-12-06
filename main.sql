use leetcode;

-- show table
SELECT
    *
FROM
    Weather;

-- Queries here
SELECT
    id
FROM
    (
        SELECT
            id,
            recordDate,
            temperature,
            old_tmp
        FROM
            (
                SELECT
                    DATE_ADD(recordDate, INTERVAL 1 DAY) AS 'join_date',
                    temperature AS "old_tmp"
                FROM
                    Weather
            ) as yest
            RIGHT JOIN Weather ON yest.join_date = Weather.recordDate
    ) as T_joined
WHERE
    temperature > old_tmp;