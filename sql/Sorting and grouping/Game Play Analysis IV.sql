https://leetcode.com/problems/game-play-analysis-iv/description/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below
With first_login AS(
    Select MIN(event_date) AS first_date, player_id
    from Activity
    Group by player_id
)

Select 
        ROUND(COUNT(a.player_id) /
        (SELECT COUNT(*) from first_login),2)as fraction
from first_login f join
Activity a
on f.player_id=a.player_id and
a.event_date=DATE_ADD(f.first_date, INTERVAL 1 DAY);
