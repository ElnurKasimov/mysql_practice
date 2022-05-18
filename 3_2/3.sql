select language, sum(salary)
from developers
join developers_skills on developers.developer_id = developers_skills.developer_id
join skills on developers_skills.skill_id = skills.skill_id
where language='Java';