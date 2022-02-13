/*
INTRODUCING THE FINAL COURSE PROJECT

THE SITUATION : You and your business partner were recently approached by another local business owner who is 
			    interested in purchasing Maven Movies. He primarily owns restaurants and bars, so he has lots 
			    of questions for you about your business and the rental business in general. His offer seems very generous, so you are going to entertain his questions.

THE OBJECTIVE : Use MySQL to:->
				Leverage your SQL skills to extract and analyze data from various tables in the Maven Movies 
                database to answer your potential Acquirer’s questions. Each question will require you to write 
                a multi-table SQL query, joining at least two tables.

THE LETTER : Dear Maven Movies Management,
			 I am excited about the potential acquisition and learning more about your rental business.
			 Please bear with me as I am new to the industry, but I have a number of questions for you. 
             Assuming you can answer them all, and that there are no major surprises, we should be able 
             to move forward with the purchase.
			 Best,
			 Martin Moneybags
             
-->	FINAL COURSE PROJECT QUESTIONS <--
*/

USE mavenmovies;

-- 1.My partner and I want to come by each of the stores in person and meet the managers. Please send over 
--   the managers’ names at each store, with the full address of each property (street address, district, 
--   city, and country please).

SELECT 
    staff.first_name 'Managers First Name',
    staff.last_name 'Managers Last Name',
    address.address AS 'Address',
    address.district AS 'District',
    city.city AS 'City',
    country.country AS 'Country'
FROM
    store
        LEFT JOIN
    staff ON store.manager_staff_id = staff.staff_id
        LEFT JOIN
    address ON store.address_id = address.address_id
        LEFT JOIN
    city ON address.city_id = city.city_id
        LEFT JOIN
    country ON city.country_id = country.country_id;

-- 2.I would like to get a better understanding of all of the inventory that would come along with the business. 
--   Please pull together a list of each inventory item you have stocked, including the store_id number, the 
--   inventory_id, the name of the film, the film’s rating, its rental rate and replacement cost.

SELECT 
    inventory.store_id AS 'Store ID',
    inventory.inventory_id AS 'Inventory ID',
    film.title AS 'Title',
    film.rating AS 'Rating',
    film.rental_rate AS 'Rental Rate',
    film.replacement_cost AS 'Replacement Cost'
FROM
    inventory
        LEFT JOIN
    film ON inventory.film_id = film.film_id;
    
-- 3.From the same list of films you just pulled, please roll that data up and provide a summary level overview 
-- of your inventory. We would like to know how many inventory items you have with each rating at each store.

SELECT 
    inventory.store_id 'Store ID',
    film.rating AS 'Rating',
    COUNT(inventory_id) AS 'Inventory Items'
FROM
    inventory
        LEFT JOIN
    film ON inventory.film_id = film.film_id
GROUP BY inventory.store_id , film.rating;
    
-- 4.Similarly, we want to understand how diversified the inventory is in terms of replacement cost. We want to 
--   see how big of a hit it would be if a certain category of film became unpopular at a certain store.
--   We would like to see the number of films, as well as the average replacement cost, and total replacement 
--   cost, sliced by store and film category.

SELECT 
    inventory.store_id AS 'Store',
    category.name AS 'Category',
    COUNT(film.film_id) AS 'Film Count',
    AVG(film.replacement_cost) AS 'Average Replacement Cost',
    SUM(film.replacement_cost) AS 'Total Replacement Cost'
FROM
    inventory
        LEFT JOIN
    film ON inventory.film_id = film.film_id
        LEFT JOIN
    film_category ON film.film_id = film_category.film_id
        LEFT JOIN
    category ON film_category.category_id = category.category_id
GROUP BY inventory.store_id , category.name
ORDER BY SUM(film.replacement_cost);
    
-- 5.We want to make sure you folks have a good handle on who your customers are. Please provide a list of all 
--   customer names, which store they go to, whether or not they are currently active, and their full addresses 
--   – street address, city, and country.

SELECT 
    customer.first_name AS 'First Name',
    customer.last_name AS 'Last Name',
    customer.store_id AS 'Store ID',
    customer.active AS 'Active',
    address.address AS 'Address',
    city.city AS 'City',
    country.country AS 'Country'
FROM
    customer
        LEFT JOIN
    address ON customer.address_id = address.address_id
        LEFT JOIN
    city ON address.city_id = city.city_id
        LEFT JOIN
    country ON city.country_id = city.country_id;

-- 6.We would like to understand how much your customers are spending with you, and also to know who your most 
--   valuable customers are. Please pull together a list of customer names, their total lifetime rentals, and 
--   the sum of all payments you have collected from them. It would be great to see this ordered on total 
--   lifetime value, with the most valuable customers at the top of the list.

SELECT 
    customer.first_name AS 'First Name',
    customer.last_name AS 'Last Name',
    COUNT(rental.rental_id) AS 'Total Rental',
    SUM(payment.amount) AS 'Total Payment'
FROM
    customer
        LEFT JOIN
    rental ON customer.customer_id = rental.customer_id
        LEFT JOIN
    payment ON rental.rental_id = payment.rental_id
GROUP BY customer.first_name , customer.last_name
ORDER BY SUM(payment.amount) DESC;
    
-- 7.My partner and I would like to get to know your board of advisors and any current investors. Could you 
--   please provide a list of advisor and investor names in one table? Could you please note whether they are 
--   an investor or an advisor, and for the investors, it would be good to include which company they work with.

SELECT 
    'Investor' AS Type, first_name, last_name, company_name
FROM
    investor 
UNION SELECT 
    'Advisor' AS Type, first_name, last_name, NULL
FROM
    advisor;