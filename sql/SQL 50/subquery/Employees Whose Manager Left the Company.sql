https://leetcode.com/problems/employees-whose-manager-left-the-company/description/?envType=study-plan-v2&envId=top-sql-50

SELECT employee_id
FROM Employees
WHERE salary<30000
and manager_id IS NOT NULL and
manager_id NOT IN (
      SELECT employee_id
      FROM Employees
  )
  order by employee_id; 
