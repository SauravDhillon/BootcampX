/* We need to be able to see the average duration of a single assistance request for each cohort.

Instruction
Get the average duration of assistance requests for each cohort.

Select the cohort's name and the average assistance request time.
Order the results from shortest average to longest.*/

SELECT cohorts.name, AVG(completed_at - started_at) as average_assistance_time
FROM students 
JOIN assistance_requests ON students.id = student_id
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY average_assistance_time;