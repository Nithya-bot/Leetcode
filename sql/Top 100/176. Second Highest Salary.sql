# Write your MySQL query statement below
/* select MAX(salary) AS SecondHighestSalary
from Employee 
where salary < (Select MAX(salary) from Employee);
 */

/* SELECT (
    SELECT DISTINCT salary
    FROM Employee
    ORDER BY salary DESC
    LIMIT 1 OFFSET 1
) AS SecondHighestSalary;
 */

 WITH RankedSalaries AS (
    SELECT 
        id, 
        salary,
        DENSE_RANK() OVER (ORDER BY salary DESC) AS salary_rank
    FROM Employee
)
SELECT MAX(salary) as SecondHighestSalary
FROM RankedSalaries
WHERE salary_rank = 2;
