https://leetcode.com/problems/find-followers-count/submissions/2051513625/?envType=study-plan-v2&envId=top-sql-50

/* Write your T-SQL query statement below */
select user_id, count(follower_id) as followers_count
from Followers
group by user_id;
