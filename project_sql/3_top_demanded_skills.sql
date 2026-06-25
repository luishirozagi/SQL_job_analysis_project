/*
what is the most in demand skill for data analyst jobs?
- join job postings to inner join  similar to query 2
- identify the top 5 in demand skills for data analyst jobs
- focus on all job postings 
- why? retrieve the top 5 skills with highest in demand  in the job market ,
provideing insight into the most valuable skills for job seekers
*/
SELECT 
    skills,
    count(skills_job_dim.job_id) as demand_count
FROM 
    job_postings_fact
inner JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
inner JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE 
    job_title_short = 'Data Analyst' AND
    job_work_From_home = true
GROUP BY 
    skills
ORDER BY 
    demand_count DESC
LIMIT 5