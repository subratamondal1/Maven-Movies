/*
Task 16
From Uncle Jimmy

“The Manager from Store 2 is working on expanding our film collection there.
Could you pull a list of distinct titles and their descriptions, currently available in 
inventory at store 2?”
*/

USE mavenmovies;

SELECT DISTINCT 
	film.title,
    film.description,
    inventory.store_id
    
FROM  film
	INNER JOIN inventory
    ON film.film_id = inventory.film_id
    AND inventory.store_id=2;