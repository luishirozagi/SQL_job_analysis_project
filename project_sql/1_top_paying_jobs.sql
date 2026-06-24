/*
Question: what are the top paying data analyst jobs?
- identify the top higest paying data analyst roles that are available remotely 
- focus on posting with specified salaies (remove null)
- why? highlight the top paying opportunities for data analysts, offering insights into the most optimal roles to pursue for career growth and financial stability.
*/
SELECT 
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name AS company_name
FROM
    job_postings_fact
    LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title_short = 'Data Analyst' AND
    job_location = 'Anywhere' AND
    salary_year_avg IS NOT NULL
order by salary_year_avg desc
limit 10