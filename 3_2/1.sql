alter table developers 
add column salary int not null;
update developers set salary=1000 where developer_id=1; 
update developers set salary=1500 where developer_id=2;
update developers set salary=2000 where developer_id=3;
update developers set salary=1600 where developer_id=4;
update developers set salary=1800 where developer_id=5;
update developers set salary=1600 where developer_id=6;
update developers set salary=2500 where developer_id=7;
