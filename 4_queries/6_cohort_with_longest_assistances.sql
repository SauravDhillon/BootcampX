/*Get the cohort with the longest average duration of assistance requests.

The same requirements as the previous query, but only return the single row with the longest average. */

SELECT cohorts.name, AVG(completed_at - started_at) as average_assistance_time
FROM students 
JOIN assistance_requests ON students.id = student_id
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY average_assistance_time DESC
LIMIT 1;