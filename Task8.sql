/*
Task 8
From Uncle Jimmy
“I’m wondering if we charge more for a rental when the replacement cost is higher.
Can you help me pull a count of films, along with the average, min, and max rental rate, grouped by replacement cost?”
*/

USE mavenmovies;

SELECT 
	replacement_cost,
	COUNT(film_id) AS No_of_Films,
    MIN(rental_rate) AS Cheapest_rental_rate,
    MAX(rental_rate) AS Costliest_rental_rate,
	AVG(rental_rate) AS Avg_rental_rate
FROM film
GROUP BY 
	replacement_cost;
    

