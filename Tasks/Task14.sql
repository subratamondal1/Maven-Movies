/*
TASK 14 
From Uncle Jimmy
“One of our investors is interested in the films we carry and how many actors are listed for each film title.
Can you pull a list of all titles, and figure out how many actors are associated with each title?”
*/

USE mavenmovies;

SELECT 
	film.title,
    COUNT(film_actor.actor_id) AS "Actors"
FROM film
	LEFT JOIN film_actor
    ON film.film_id = film_actor.film_id
GROUP BY film.title;