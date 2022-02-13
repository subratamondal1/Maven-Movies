/*
The Situation : The company’s insurance policy is up for renewal and the insurance company’s 
underwriters need some updated information from us before they will issue a new policy.

The Objective : Use MySQL to:- Leverage your SQL skills to extract and analyze data from 
							   various tables in the Maven Movies database to answer the underwriters’ questions. Each question can be answered by querying just one table. Part of your job as an Analyst is figuring out which table to use.
*/
/*
The Letter : Dear Maven Movies Management,
In our review of your policy renewal application, we have realized that your business information has not been updated in a number of years.
In order to accurately assess the risk and approve your policy renewal, we will need you to provide all of the following information.
Sincerely,
Joe Scardycat, Lead Underwriter
*/

 
-- MID COURSE PROJECT QUESTIONS

USE mavenmovies;

-- 1.We will need a list of all staff members, including their first and last names, email addresses, 
-- and the store identification number where they work.
SELECT 
    first_name, last_name, email, store_id
FROM
    staff;

-- 2.We will need separate counts of inventory items held at each of your two stores.
SELECT 
    store_id, COUNT(inventory_id) AS Inventory_items
FROM
    inventory
GROUP BY store_id;

-- 3.We will need a count of active customers for each of your stores. Separately, please.
SELECT 
    store_id, COUNT(customer_id) AS Active_Customers
FROM
    customer
WHERE
    active = 1
GROUP BY store_id;
 
 
-- 4.In order to assess the liability of a data breach, we will need you to provide a count of 
-- all customer email addresses stored in the database.

SELECT 
    COUNT(email) AS Emails
FROM
    customer;

-- 5.We are interested in how diverse your film offering is as a means of understanding how likely you 
-- are to keep customers engaged in the future. Please provide a count of unique film titles you have in 
-- inventory at each store and then provide a count of the unique categories of films you provide.

SELECT 
    store_id AS 'Store ID',
    COUNT(DISTINCT film_id) AS 'Unique Films'
FROM
    inventory
GROUP BY store_id;

SELECT 
    COUNT(DISTINCT name) AS 'Unique Film Categories'
FROM
    category;

-- 6.We would like to understand the replacement cost of your films. Please provide the replacement cost for 
-- the film that is least expensive to replace, the most expensive to replace, and the average of all films you carry.

SELECT 
    MIN(replacement_cost) AS 'Least Expensive',
    MAX(replacement_cost) AS 'MOST Expensive',
    AVG(replacement_cost) AS 'Average Expensive'
FROM
    film;

-- 7.We are interested in having you put payment monitoring systems and maximum payment processing restrictions 
-- in place in order to minimize the future risk of fraud by your staff. Please provide the average payment you 
-- process, as well as the maximum payment you have processed.

SELECT 
    AVG(amount) AS 'Average Payment',
    MAX(amount) AS 'Maximum Payment'
FROM
    payment;

-- 8.We would like to better understand what your customer base looks like. Please provide a list of all customer 
-- identification values, with a count of rentals they have made all-time, with your highest volume customers at 
-- the top of the list.

SELECT 
    customer_id AS 'Customer ID',
    COUNT(rental_id) AS 'Rental Count'
FROM
    rental
GROUP BY customer_id
ORDER BY COUNT(rental_id) DESC;