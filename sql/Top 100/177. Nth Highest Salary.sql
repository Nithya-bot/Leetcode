CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
        WITH RankedSalaries AS (
            SELECT 
                id, 
                salary,
            DENSE_RANK() OVER (ORDER BY salary DESC) AS salary_rank
        FROM Employee
)
        SELECT MAX(salary) as SecondHighestSalary
        FROM RankedSalaries
        WHERE salary_rank = N

  );
END
