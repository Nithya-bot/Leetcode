https://leetcode.com/problems/project-employees-i/?envType=study-plan-v2&envId=top-sql-50

select p.project_id, ROUND(AVG(e.experience_years * 1.0),2) as average_years from Project p
join employee e on p.employee_id = e.employee_id
group by project_id;
