/*Get the students who's average time it takes to complete an assignment is less than the average estimated time it takes to complete an assignment.

Select the name of the student, their average completion time, and the average suggested completion time.
Order by average completion time from smallest to largest.
Only get currently enrolled students.
This will require data from students, assignment_submissions, and assignments. */

SELECT students.name as student, AVG(assignment_submissions.duration) AS average_assignment_duration, AVG(assignments.duration) AS average_estimated_duration
FROM assignment_submissions JOIN students
ON student_id = students.id
JOIN assignments ON assignment_id = assignments.id 
WHERE students.end_date IS NULL
GROUP BY student
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY average_assignment_duration;