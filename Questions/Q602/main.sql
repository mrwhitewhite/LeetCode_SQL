use leetcode;

-- show table
SELECT
    *
FROM
    RequestAccepted;

-- Queries here
WITH t AS (
    (
        SELECT
            requester_id id,
            accepter_id friend_id
        FROM
            RequestAccepted
    )
    UNION
    ALL (
        SELECT
            accepter_id id,
            requester_id friend_id
        FROM
            RequestAccepted
    )
)
SELECT
    id,
    COUNT(id) num
FROM
    t
GROUP BY
    id
ORDER BY
    num DESC
LIMIT
    1