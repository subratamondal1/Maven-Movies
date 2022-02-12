/*
Task 9
From Uncle Jimmy
“I’d like to talk to customers that have not rented much from us to understand if there is something we could be doing better.
Could you pull a list of customer_ids with less than 15 rentals all-time?”
*/
USE mavenmovies;

SELECT 
	customer_id,
    COUNT(rental_id) AS Total_rentals
FROM rental
GROUP BY customer_id
HAVING Total_rentals < 15;

    