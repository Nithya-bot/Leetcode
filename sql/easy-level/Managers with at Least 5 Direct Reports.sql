https://leetcode.com/problems/managers-with-at-least-5-direct-reports/description/?envType=study-plan-v2&envId=top-sql-50

Select e.name from Employee e join
(
select managerId, count(*)
from Employee 
group by managerId
having count(*)>=5
) m
on m.managerId = e.id;
