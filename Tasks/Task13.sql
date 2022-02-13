/*
Task 13
From Uncle Jimmy

“Can you pull for me a list of each film we have in inventory?
I would like to see the film’s title, description, and the store_id value associated with each item, 
and its inventory_id. Thanks!”
*/

USE mavenmovies;

SELECT 
	inventory.store_id,
    inventory.inventory_id,
	film.title,
    film.description
    
FROM film
	INNER JOIN inventory
    ON film.film_id = inventory.film_id
    