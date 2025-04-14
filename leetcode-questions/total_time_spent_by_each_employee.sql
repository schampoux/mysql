select 
    event_day as day, 
    emp_id, 
    (out_time - in_time) as total_time

from 
    Employees

group by 
    event_day, emp_id  

order by 
    day, 
    total_time desc;
