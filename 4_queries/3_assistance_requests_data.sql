/*Each assistance request is related to a bunch of data like a teacher, student, an optional assignment, and more. We want to be able to see all important data about an assistance request.

Instruction
Get important data about each assistance request.

Select the teacher's name, student's name, assignment's name if it has one, and the duration of each assistance request.
Subtract completed_at by started_at to find the duration.
Order by the duration of the request.*/

SELECT teachers.name AS teacher, students.name AS student, assignments.name AS assignment, (assistance_requests.completed_at - assistance_requests.started_at) AS duration
FROM assistance_requests 
JOIN students ON student_id = students.id
JOIN teachers ON teacher_id = teachers.id
JOIN assignments ON assignment_id = assignments.id
ORDER BY duration;