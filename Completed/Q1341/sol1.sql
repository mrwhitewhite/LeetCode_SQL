use leetcode;

-- show table
SELECT
    *
FROM
    Movies;

SELECT
    *
FROM
    Users;

SELECT
    *
FROM
    MovieRating;

-- Queries here
with t_name AS (
    SELECT
        name,
        user_id,
        COUNT(user_id) n
    FROM
        MovieRating
        LEFT JOIN Users USING(user_id)
    GROUP BY
        user_id,
        name
),
t_title AS (
    SELECT
        movie_id,
        AVG(rating) rating,
        title
    FROM
        MovieRating
        LEFT JOIN Movies USING(movie_id)
    WHERE
        YEAR(created_at) = 2020
        AND MONTH(created_at) = 2
    GROUP BY
        movie_id,
        title
    ORDER BY
        rating DESC
)
SELECT
    MIN(name) results
FROM
    t_name
WHERE
    n = (
        SELECT
            MAX(n)
        FROM
            t_name
    )
UNION
ALL
SELECT
    MIN(title) results
FROM
    t_title
WHERE
    (
        rating = (
            SELECT
                MAX(rating)
            FROM
                t_title
        )
    )