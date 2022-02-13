/*
Task 15
From Uncle Jimmy
“Customers often ask which films their favorite actors appear in.
It would be great to have a list of all actors, with each title that they appear in. Could you please pull that for me?”
*/

USE mavenmovies;

SELECT 
	actor.first_name,
    actor.last_name,
    film.title    
FROM actor
	INNER JOIN film_actor
    ON actor.actor_id = film_actor.actor_id
    INNER JOIN film
    ON film_actor.film_id = film.film_id
ORDER BY 
	first_name,
    last_name;
 
    