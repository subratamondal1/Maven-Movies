/*
Task 11
From Uncle Jimmy
“I’d like to know which store each customer goes to, and whether or not they are active.
Could you pull a list of first and last names of all customers, and label them as either 
‘store 1 active’, ‘store 1 inactive’, ‘store 2 active’, or ‘store 2 inactive’?”
*/

USE mavenmovies;

SELECT 
	first_name,
    last_name,
    store_id,
    active,
	CASE 
		WHEN store_id = 1 AND active = 1 THEN "Store 1 Active"
        WHEN store_id = 1 AND active = 0 THEN "Store 1 Inactive"
        WHEN store_id = 2 AND active = 1 THEN "Store 2 Active"
        WHEN store_id = 2 AND active = 0 THEN "Store 2 Inactive"
        ELSE "Inactive Customer"
	END AS Store_and_Status
FROM customer
 
 

