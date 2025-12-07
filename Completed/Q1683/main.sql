use leetcode;

-- show table
SELECT * FROM Tweets;

-- Queries here
SELECT tweet_id FROM Tweets WHERE LENGTH(content) > 15;
