https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/description/?envType=study-plan-v2&envId=top-sql-50

SELECT m.employee_id,
m.name, count(e.employee_id) as reports_count,
Round(AVG(e.age),0) as average_age
from Employees m
join Employees e
on e.reports_to=m.employee_id
group by m.employee_id,name
order by m.employee_id;
