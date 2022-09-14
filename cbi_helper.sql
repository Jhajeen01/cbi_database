select count(*) from agents;

select * from agents;
drop table agent;
select * from agents where working_area='torento';

select count(working_area) from agents where working_area='london';#just to count number of occurance!

select working_area, count(working_area) as bb from agents group by working_area having count(working_area)>1;
#to create a working_area and bb columned table for peoples having more than one same locations

select * from targets;

select * from orders;#to show table for orders!

#to find agent and target working in same city;
select a.agent_code, t.target_code,t.working_area 
from agents a inner join targets t 
on a.agent_code=t.agent_code 
where a.working_area=t.working_area;

