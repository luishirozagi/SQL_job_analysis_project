/*
question: what are the most optimal skills to learn (Aka its in high demand and a high paying skill)?
- identify skills in high demand and associated with high average salaries for data analyst roles 
- conncentrates on remote positions with specified salaries
- why? targets skills that offer job security (high demnand) and financial benefits (high salary),
offering strategic insights for career development in data analysis
*/
WITH skills_demand AS (
    SELECT 
        skills_job_dim.skill_id,
        skills_dim.skills,
        count(skills_job_dim.job_id) as demand_count
    FROM 
        job_postings_fact
    inner JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
    inner JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
    WHERE 
        job_title_short = 'Data Analyst' AND
        job_work_From_home = true
        AND salary_year_avg IS NOT NULL
    GROUP BY 
        skills_job_dim.skill_id,
        skills_dim.skills
), average_salary AS(
    SELECT 
        skills_job_dim.skill_id,
        ROUND(AVG(salary_year_avg),0) AS avg_salary
    FROM 
        job_postings_fact
    inner JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
    inner JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
    WHERE 
        job_title_short = 'Data Analyst' 
        AND salary_year_avg IS NOT NULL
        AND job_work_From_home = true
    GROUP BY 
        skills_job_dim.skill_id
)
SELECT 
    skills_demand.skill_id,
    skills_demand.skills,
    demand_count,
    avg_salary  
FROM 
    skills_demand
inner JOIN 
    average_salary ON skills_demand.skill_id = average_salary.skill_id
WHERE 
    demand_count > 10
ORDER BY 
    avg_salary DESC,
    demand_count DESC
limit 25;