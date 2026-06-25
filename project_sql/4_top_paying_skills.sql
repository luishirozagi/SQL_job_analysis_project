/*
Qestion : what are the top skills based on salary?
- look at the average salary associated with each skill for data analyst positions
- focus on the roles with specefied salary , regardless of the location
- why? it reveals how different skills impact salary level for data analyst positions,
   and helps identify the most financially  rewarding skills to acquire and improve
*/
SELECT 
    skills,
    round(AVG(salary_year_avg),3) AS avg_salary
FROM 
    job_postings_fact
inner JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
inner JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE 
    job_title_short = 'Data Analyst' 
    AND salary_year_avg IS NOT NULL
   -- AND job_work_From_home = true (use this line if you want to filter for remote jobs only)
GROUP BY 
    skills
ORDER BY 
    avg_salary DESC
LIMIT 25
