alter table projects 
add column cost int not null;
select * from projects;
update projects set cost = 15000 where project_id=1; 
update projects set cost = 50000 where project_id=2; 
update projects set cost = 40000 where project_id=3; 
update projects set cost = 25000 where project_id=4; 