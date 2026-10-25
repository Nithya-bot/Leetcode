SELECT e.employee_id from Employees e
LEFT JOIN Salaries s
on e.employee_id = s.employee_id
where s.employee_id is null

UNION

SELECT s.employee_id from Employees e
RIGHT JOIN Salaries s
on e.employee_id = s.employee_id
where e.employee_id is null

order by employee_id;

