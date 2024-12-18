/* We need to be able to see the current average time it takes to complete an assistance request.

Instruction
Get the average time of an assistance request.

Select just a single row here and name it average_assistance_request_duration
In Postgres, we can subtract two timestamps to find the duration between them. (timestamp1 - timestamp2)*/

--SELECT SUM(completed_at - started_at) as sum_assistance_request_duration
--FROM assistance_requests;

SELECT AVG(completed_at - started_at) as average_assistance_request_duration
FROM assistance_requests
WHERE completed_at IS NOT NULL AND started_at IS NOT NULL;