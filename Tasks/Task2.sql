-- Task 2

-- From Uncle Jimmy
-- “My understanding is that we have titles that we rent for durations of 3, 5, or 7 days.
-- Could you pull the records of our films and see if there are any other rental durations?”


USE mavenmovies;

SELECT DISTINCT
	rental_duration
FROM film;
	