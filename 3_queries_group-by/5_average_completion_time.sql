/*Get currently enrolled students' average assignment completion time.

Select the students name and average time from assignment submissions.
Order the results from greatest duration to least greatest duration.
A student will have a null end_date if they are currently enrolled */

SELECT students.name as student, AVG(assignment_submissions.duration) AS average_assignment_duration
FROM assignment_submissions JOIN students
ON student_id = students.id
WHERE students.end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration DESC;