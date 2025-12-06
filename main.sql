use leetcode;

-- show table
SELECT * FROM World;

-- Queries here
SELECT name, population, area
from World
WHERE
    area >= 3000000
    OR population >= 25000000;