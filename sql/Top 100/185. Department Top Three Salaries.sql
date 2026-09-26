# Write your MySQL query statement below


Select Department, Employee,  Salary
from(
Select d.name as Department,
e.name as Employee,
e.salary as Salary,
DENSE_RANK() OVER(
    PARTITION BY d.id 
    order by e.salary desc
    ) as `rank`
from Employee e join Department d on e.departmentId=d.id
) ranked 
where `rank` <= 3;
