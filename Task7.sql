/*
Task 7
From Uncle Jimmy
“I need to get a quick overview of how long our movies tend to be rented out for.
Could you please pull a count of titles sliced by rental duration?”
*/
USE mavenmovies;

SELECT 
	rental_duration,
	COUNT(film_id) AS films_with_rental_duration
    
FROM film
GROUP BY rental_duration;
