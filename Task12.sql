/*

Task 12

From Uncle Jimmy 
“I’m curious how many inactive customers we have at each store.
Could you please create a table to count the number of customers 
broken down by store_id (in rows), and active status (in columns)?”

*/

USE mavenmovies;

SELECT 
    store_id,
    COUNT(CASE WHEN active = 1 THEN customer_id ELSE NULL END) AS Active_Status,
    COUNT(CASE WHEN active = 0 THEN customer_id ELSE NULL END) AS Inactive_Status
FROM
    customer
GROUP BY store_id;
