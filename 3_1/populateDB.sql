insert into companies(name, rating) values
('Luxoft', 'hight'),
('GeeksForLess Inc.', 'middle'),
('Beetroot', 'low');
insert into developers(lastName, firstName, age, company_id) values
('Chimadurov', 'Ruslan', 56, 1),
('Stepanova', 'Tetyana', 34, 2),
('Havrilitse', 'Vadim', 32, 3),
('Petrenko', 'Vladimir', 28, 2),
('Omelyashko', 'Olexey', 30, 1),
('Zerko', 'Andrew', 26, 1);
insert into developers(lastName, firstName, age, company_id) values ('Yakovenko', 'Vyacheslav', 24, 1);
insert into skills (language, level) values
('Java', 'junior'), ('Java', 'middle'), ('Java', 'senior'),
('JS', 'junior'), ('JS', 'middle'), ('JS', 'senior'),
('C++', 'junior'), ('C++', 'middle'), ('C++', 'senior'),
('PHP', 'junior'), ('PHP', 'middle'), ('PHP', 'senior');
insert into  developers_skills (developer_id, skill_id) values
(1, 1),  
(2, 1), (2, 4), (2, 10), 
(3, 2), (3, 11), 
(4, 2), 
(5, 1), (5, 10),
(6, 2), (6, 8),
(7, 3), (7, 9), (7, 12);
select * from companies;
select * from customers;
insert into customers (name,reputation) values
('IBM', 'trustworthy'),
('Apple', 'respectable'),
('Fasebook', 'insolvent'),
('Oracle', 'respectable');
insert into projects (name, company_id, customer_id) values
('MetaUnivers', 1, 3),
('Cristal Eye', 3, 2),
('Super Technology', 2, 1),
('Global DB', 1, 4);
select * from projects_developers;
select* from developers;
insert into projects_developers (project_id, developer_id) values
( 1, 3), (1, 4), (1, 6), (1, 7),
(2, 1), (2, 2), (2, 5), (2, 3), (2, 7), 
(3, 1), (3, 2), (3, 4), 
(4, 5), (4, 6), (4, 7);
