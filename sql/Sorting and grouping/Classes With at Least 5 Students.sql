https://leetcode.com/problems/classes-with-at-least-5-students/?envType=study-plan-v2&envId=top-sql-50

/* Write your T-SQL query statement below */
select  class
from Courses
group by class
having count(class)>=5;
