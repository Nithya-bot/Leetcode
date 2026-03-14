https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/?envType=study-plan-v2&envId=top-sql-50

select u.unique_id,e.name 
from  Employees e
LEFT JOIN EmployeeUNI u ON e.id=u.id;
