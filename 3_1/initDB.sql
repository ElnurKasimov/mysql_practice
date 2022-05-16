create database it_market;
create table companies (
company_id int not null auto_increment,
name varchar(100),
reputation varchar(200),
PRIMARY KEY (company_id)
);
alter table companies drop column reputation;
alter table companies add column rating varchar(50) not null;
alter table companies add check (rating in ('low', 'middle', 'hight'));
CREATE TABLE developers (
    developer_id int not null AUTO_INCREMENT,
    lastName varchar(50) not null,
    firstName varchar(50),
    age int,
    company_id int not null,
    PRIMARY KEY (developer_id),
    FOREIGN KEY (company_id) REFERENCES companies(company_id)
);
create table skills (
skill_id int not null auto_increment,
language varchar(50),
level varchar(50),
primary key (skill_id),
check (level in ('junior', 'middle', 'senior'))
); 
create table developers_skills (
developer_id int not null,
skill_id int not null,
primary key (developer_id, skill_id),
foreign key (developer_id) references developers (developer_id),
foreign key (skill_id) references skills (skill_id)
);
create table customers (
customer_id int not null auto_increment,
name varchar(100),
reputation varchar(100),
primary key (customer_id),
check (reputation in ('insolvent', 'trustworthy', 'respectable'))
);
alter table customers drop column reputation;
alter table customers add column reputation varchar(100) not null;
create table projects (
project_id int not null auto_increment,
name varchar(100),
company_id int not null,
customer_id int not null,
primary key (project_id),
foreign key (company_id) references companies (company_id),
foreign key (customer_id) references customers (customer_id)
);
create table projects_developers (
project_id int not null,
developer_id int not null,
primary key (project_id, developer_id),
foreign key (project_id ) references projects (project_id),
foreign key (developer_id) references developers (developer_id)
);