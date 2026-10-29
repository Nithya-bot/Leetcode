select p.project_id, ROUND(AVG(E.experience_years),2) AS average_years
FROM Project P inner JOIN Employee E on
p.employee_id = e.employee_id
group by p.project_id;
