/*
Task 17
From Uncle Jimmy
“We will be hosting a meeting with all of our staff and advisors soon.
Could you pull one list of all staff and advisor names, and include a column noting whether they 
are a staff member or advisor? Thanks!”
*/

USE mavenmovies;

SELECT 
	'Advisor' AS Type,
    first_name,
    last_name
FROM advisor

UNION 

SELECT 
	'Staff' AS Type,
    first_name,
    last_name
FROM staff ;

    