-- Task 5
-- From Uncle Jimmy
-- “The data you shared previously on customers 42, 53, 60, and 75 was good to see.
-- Now, could you please write a query to pull all payments from those specific customers, along with payments over $5, from any customer?”


USE mavenmovies;

SELECT 
	customer_id,
    rental_id,
    amount,
    payment_date
FROM payment
WHERE 
	customer_id IN(42,53,60,75)
	OR amount > 5;
	