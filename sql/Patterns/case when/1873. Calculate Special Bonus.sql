select employee_id,
case 
    when  employee_id%2 != 0 and name not like 'M%' then salary
    else 0
end bonus
from Employees
order by employee_id;
