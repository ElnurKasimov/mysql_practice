select name, sum(salary)
from projects
join projects_developers on projects.project_id = projects_developers.project_id
join developers on projects_developers.developer_id = developers.developer_id
group by name
order by sum(salary) desc
limit 1;