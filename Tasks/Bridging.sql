-- BRIDGING : When WE need to connect two tables which do not directly relate, look for a third table containing 
-- keys common to both; this can serve as a “bridge” to join our tables together.

USE mavenmovies;

SELECT 
	film.film_id,
    film.title,
    category.name
FROM film
	INNER JOIN film_category
    ON film.film_id = film_category.film_id
    INNER JOIN category
    ON film_category.category_id = category.category_id;