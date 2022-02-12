/*
Task 10
From Uncle Jimmy

“I’d like to see if our longest films also tend to be our most expensive rentals.
Could you pull me a list of all film titles along with their lengths and rental rates, 
and sort them from longest to shortest?”
*/

USE mavenmovies;

SELECT 
	title,
    length,
    rental_rate
FROM film
ORDER BY length DESC;

