/*We need to be able to see how many assistance requests any student has requested.

Instruction
Get the total number of assistance_requests for a student.

Select the student's name and the total assistance requests.
Since this query needs to work with any specific student name, use 'Elliot Dickinson' for the student's name here. */

SELECT COUNT(assistance_requests.*) AS total_assistances, students.name
FROM assistance_requests JOIN students
ON student_id = students.id
WHERE students.name = 'Elliot Dickinson'
GROUP BY students.name;