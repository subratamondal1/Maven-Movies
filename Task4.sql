-- Task 4
-- From Uncle Jimmy
-- “The payment data you gave me on our first 100 customers was great – thank you!
-- Now I’d love to see just payments over $5 for those same customers, since January 1, 2006.”

USE mavenmovies;

SELECT 
	customer_id,
    rental_id,
    amount,
    payment_date
FROM payment
WHERE customer_id <=100
	AND amount > 5
	AND payment_date > "2006-01-01";
