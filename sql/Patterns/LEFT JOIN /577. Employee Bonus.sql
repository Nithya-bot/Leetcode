select e.name, b.bonus from Employee e
LEFT JOIN Bonus b
on e.empId = b.empId
where b.empId is null or b.bonus<1000;
