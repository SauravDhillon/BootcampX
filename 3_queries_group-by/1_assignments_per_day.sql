/* Get the total number of assignments for each day of bootcamp.

Select the day and the total assignments.
Order the results by day.
This query only requires the assignments table.*/

SELECT assignments.day, COUNT(assignments.*) as total_assignments
FROM assignments
GROUP BY assignments.day
ORDER BY assignments.day;