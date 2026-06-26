# 📊 SQL Job Market Analysis

## Introduction

This project explores the data job market using SQL and a real-world dataset containing job postings, companies, and required skills. The objective is to uncover meaningful insights about salaries, in-demand skills, and career opportunities in the data industry through structured SQL queries.

The project demonstrates practical SQL skills by answering business-oriented questions using relational databases and data analysis techniques. 
SQL queries? here they are [project_sql folder](/project_sql)

---

## Background

The rapid growth of the data industry has increased demand for professionals with strong technical skills. Understanding which skills employers value most and how they influence salary can help aspiring data professionals make informed learning and career decisions.

This project analyzes thousands of job postings to identify:

* The highest-paying data jobs
* Skills required for top-paying positions
* Most in-demand technical skills
* Highest-paying skills
* Skills that offer the best balance between demand and salary

> **Acknowledgment:** This project was completed as part of the SQL learning course by **Luke Barousse**. The dataset, project structure, and analysis questions are based on the course material. The SQL implementation, project organization, and GitHub repository were completed as part of my learning journey. This repository is intended for educational and portfolio purposes.

---

## Tools I Used

* **PostgreSQL** – Database management system used to store and query the data.
* **SQL** – Used for querying, filtering, joining, and analyzing the dataset.
* **Visual Studio Code** – SQL development environment.
* **Git** – Version control.
* **GitHub** – Project hosting and portfolio management.
* **CSV Files** – Source data imported into the PostgreSQL database. [csv files used](/csv_files/)

---

## The Analysis

The project answers five key business questions:

### 1. Top Paying Jobs

Identified the highest-paying data-related positions by analyzing annual salary information.
@ [top paying jobs](/project_sql/1_top_paying_jobs.sql)

### 2. Skills Required for Top Paying Jobs

Connected job postings with their required technical skills using SQL joins to determine which skills employers expect for high-paying roles. @[top paying skills](/project_sql/2_top_paying_job_skills.sql)

### 3. Most In-Demand Skills

Calculated the frequency of different technical skills across job postings to identify the most sought-after technologies.
@[top demand skills](/project_sql/3_top_demanded_skills.sql)

### 4. Highest Paying Skills

Computed the average salary associated with individual skills to determine which technologies command the highest compensation. @[top paying skills](/project_sql/4_top_paying_skills.sql)

### 5. Optimal Skills

Combined salary and demand metrics to identify skills that provide the strongest balance between earning potential and market demand. @[optimal skills](/project_sql/5_optimal_skills_simple.sql)

Throughout the analysis, SQL concepts such as filtering, aggregation, joins, Common Table Expressions (CTEs), sorting, and grouping were used to transform raw data into meaningful business insights.

---

## What I Learned

This project strengthened my understanding of SQL by applying it to a real-world dataset instead of simple practice exercises.

Key skills I developed include:

* Writing complex SQL queries
* Working with relational databases
* Using JOINs to combine multiple tables
* Applying aggregate functions such as `COUNT()` and `AVG()`
* Using `GROUP BY` and `ORDER BY` effectively
* Creating Common Table Expressions (CTEs)
* Importing CSV datasets into PostgreSQL
* Organizing SQL projects using Git and GitHub
* Performing data analysis to answer business questions

Beyond SQL syntax, this project helped me understand how databases are used to solve practical business problems and generate actionable insights.

---

## Conclusion

This project demonstrates how SQL can be used to analyze real-world datasets and extract valuable insights from large volumes of data. By exploring salary trends and skill demand within the data job market, I gained practical experience in database querying, data analysis, and problem-solving.

As I continue learning data analytics and data science, I plan to expand this project by creating interactive dashboards using Power BI or Tableau and incorporating additional datasets for deeper analysis.



## Closing Thoughts

This project marks an important milestone in my journey toward becoming a data professional. It allowed me to move beyond learning SQL syntax and apply my knowledge to a real-world dataset, answering meaningful business questions through data analysis.

Working through this project helped me develop a stronger understanding of relational databases, query optimization, and analytical thinking. It also gave me valuable experience using industry-standard tools such as PostgreSQL, Git, and GitHub to organize and document my work.

While this project was completed as part of a guided SQL course by Luke Barousse, I treated it as an opportunity to build a solid foundation in SQL and create a portfolio project that reflects both my learning process and my growing technical skills.

As I continue learning data analytics and data science, I look forward to building more independent projects, exploring advanced SQL techniques, and creating interactive dashboards and end-to-end data solutions.

Thank you for taking the time to explore this project. Feedback, suggestions, and discussions are always welcome!