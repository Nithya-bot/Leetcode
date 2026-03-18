https://leetcode.com/problems/percentage-of-users-attended-a-contest/description/?envType=study-plan-v2&envId=top-sql-50

select r.contest_id, ROUND(COUNT(DISTINCT r.user_id) *100 * 1.0/ (SELECT COUNT(*) FROM Users),2) as percentage
from Users u join Register r on u.user_id=r.user_id
group by r.contest_id order by percentage DESC, r.contest_id;
