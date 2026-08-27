# Write your MySQL query statement below
SELECT ROUND(COUNT(b1.player_id) / 
(SELECT COUNT(DISTINCT player_id) FROM Activity),2) AS fraction
FROM(
    SELECT player_id, MIN(event_date) AS first_login
    FROM Activity
    GROUP BY player_id) AS a1
    JOIN Activity b1
    ON a1.player_id = b1.player_id
    AND DATEDIFF(b1.event_date, a1.first_login) = 1;
