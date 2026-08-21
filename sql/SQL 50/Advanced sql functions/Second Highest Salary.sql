https://leetcode.com/problems/second-highest-salary/description/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below
/* select MAX(salary) AS SecondHighestSalary
from Employee 
where salary < (Select MAX(salary) from Employee);
 */

SELECT (
    SELECT DISTINCT salary
    FROM Employee
    ORDER BY salary DESC
    LIMIT 1 OFFSET 1
) AS SecondHighestSalary;
