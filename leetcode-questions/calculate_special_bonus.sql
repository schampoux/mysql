select 
employee_id,
case when name like 'M%' then 0
when mod(employee_id, 2) = 0 then 0
when mod(employee_id, 2) = 1 then salary  
end as bonus
from Employees
order by employee_id;
