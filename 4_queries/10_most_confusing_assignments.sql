/*We need to know which assignments are causing the most assistance requests.

Instruction
List each assignment with the total number of assistance requests with it.

Select the assignment's id, day, chapter, name and the total assistances.
Order by total assistances in order of most to least. */

SELECT assignments.id, assignments.name, assignments.day, assignments.chapter, COUNT(assistance_requests.*) AS total_requests
FROM assistance_requests
JOIN assignments ON assignment_id = assignments.id
GROUP BY assignments.id
ORDER BY total_requests DESC;