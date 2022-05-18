-- delete from skills where skill_id > 12;
-- delete from developers where developer_id > 7;
select * from developers;
select * from skills;
select * from companies;

-- selecting using subselections

select * from skills 
   where level = 'junior';
select * from developers_skills 
   where skill_id in (
       select skill_id  from skills 
       where level = 'junior'
   );
select * from developers
   where  developer_id in ( 
      select developer_id from developers_skills 
          where skill_id in (
             select skill_id  from skills 
                where level = 'junior')
   );

	-- who works in Luxoft (only names)
select lastName, firstName from developers 
   where company_id  in (
        select company_id from companies where name = 'Luxoft');

-- the sasme selection using JOIN tables
select lastName, firstName from developers 
join companies on developers.company_id = companies.company_id
where name = 'Luxoft';

 -- join practice

-- who from developers use language HPH?
select lastName, firstName, language
from developers 
join developers_skills on developers.developer_id = developers_skills.developer_id
join skills on developers_skills.skill_id = skills.skill_id
where language = 'PHP';


-- group by/ order by/ limit practice

select skill_id, developer_id from developers_skills;
select count(developer_id), skill_id
from developers_skills
group by skill_id;

-- how many levels each  has language C++
select  language, count(level)
from skills
group by language
having language = 'C++';

-- how many people work in companies?
select name, count(developer_id)
from developers
join companies on developers.company_id = companies.company_id
group by name
order by count(developer_id) asc; -- this string is not obligatory

-- which company has the most/least employeers?

-- implamentation which does't take into accaunt that several companies can have the same quantity developers
select name, count(developer_id)
from developers
join companies on developers.company_id = companies.company_id
group by name
order by count(developer_id) desc -- asc for least
limit 1;

-- how much cost the most expensive project?
select name, sum(salary)
from projects
join projects_developers on projects.project_id = projects_developers.project_id
join developers on projects_developers.developer_id = developers.developer_id
group by name
order by sum(salary) desc
limit 1;

-- what is total salary of Java developers?
select language, sum(salary)
from developers
join developers_skills on developers.developer_id = developers_skills.developer_id
join skills on developers_skills.skill_id = skills.skill_id
where language='Java';
   
  