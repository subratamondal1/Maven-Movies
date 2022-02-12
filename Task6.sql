-- Task 6
-- From Uncle Jimmy

-- “We need to understand the special features in our films. Could you pull a list of films which 
-- include a Behind the Scenes special feature?”

USE mavenmovies;

SELECT 
	title,
    special_features
FROM film
WHERE special_features LIKE "%Behind the Scenes%";
