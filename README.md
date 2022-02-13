# Maven-Movies
>SQL Project : Where I am in charge of day to day operation and need to analyze everything on my own.
___
`The Situation :` Me and my rich uncle Jimmy have just purchased Maven Movies, a brick and mortar DVD Rental business. Uncle Jimmy put up the money, and I am in charge of the day to day operations.
___
`The Brief :` As a new owner, we will need to learn everything we can about our business : our product inventory, our staff, our customer purchase behaviours ,etc.
I have access to the entire ***Maven Movies SQL Database*** , but the remaining employees are not able to give any help or direction. ***I will need to analyze everything on my own***.


___
`The Objective :` 
#### Use MYSQL to :
```
-> Access and explore the Maven Movies Database.
-> Develop a firm grasp of the 16 database tables and how they are related to each other.
-> Analyze all aspects of the company's data, including transactions, customers, staffs, etc.
```
___
### Mid Course Project
`The Situation :` The company’s insurance policy is up for renewal and the insurance company’s 
underwriters need some updated information from us before they will issue a new policy.

`The Objective :` Use MySQL to:- Leverage your SQL skills to extract and analyze data from 
							   various tables in the Maven Movies database to answer the underwriters’ questions. Each question can be answered by querying just one table. Part of your job as an Analyst is figuring out which table to use.

`The Letter :` Dear Maven Movies Management,
In our review of your policy renewal application, we have realized that your business information has not been updated in a number of years.
In order to accurately assess the risk and approve your policy renewal, we will need you to provide all of the following information.
Sincerely,
Joe Scardycat, Lead Underwriter

***MID COURSE PROJECT QUESTIONS***
- We will need a list of all staff members, including their first and last names, email addresses, and the store identification number where they work.

<img width="1241" alt="mcp1" src="https://user-images.githubusercontent.com/60319087/153743264-f4839814-8213-4909-aa26-66d8dc23cb30.png">
 
- We will need separate counts of inventory items held at each of your two stores.

<img width="1242" alt="mcp2" src="https://user-images.githubusercontent.com/60319087/153743481-e7ab696f-e4b8-4f1f-ac20-57c893b42c27.png">
 
- We will need a count of active customers for each of your stores. Separately, please.

<img width="1240" alt="mcp3" src="https://user-images.githubusercontent.com/60319087/153743497-60eedacd-f918-46ec-9a7d-cabf50ac44af.png">

- In order to assess the liability of a data breach, we will need you to provide a count of all customer email addresses stored in the database.
 
 <img width="1246" alt="mcp4" src="https://user-images.githubusercontent.com/60319087/153743605-317ae30c-80e1-4b4c-902e-0cb246b6ffe0.png">

- We are interested in how diverse your film offering is as a means of understanding how likely you are to keep customers engaged in the future. Please provide a count of unique film titles you have in inventory at each store and then provide a count of the unique categories of films you provide.

<img width="1245" alt="mcp5" src="https://user-images.githubusercontent.com/60319087/153743962-c535be67-05c5-4739-97c9-20b9bb924c1f.png">
<img width="1249" alt="mcp5 1" src="https://user-images.githubusercontent.com/60319087/153744123-fe08ed15-80da-42b7-a707-7ce13cbb49c9.png">

- We would like to understand the replacement cost of your films. Please provide the replacement cost for  the film that is least expensive to replace, the most expensive to replace, and the average of all films you carry.

<img width="1244" alt="mcp6" src="https://user-images.githubusercontent.com/60319087/153744248-f95daad4-59cb-4e86-8b09-85bcfed18ba8.png">

- We are interested in having you put payment monitoring systems and maximum payment processing restrictions in place in order to minimize the future risk of fraud   by your staff. Please provide the average payment you process, as well as the maximum payment you have processed.

<img width="1245" alt="mcp7" src="https://user-images.githubusercontent.com/60319087/153744654-7757bb25-5848-4259-bb3d-928c90bce596.png">

- We would like to better understand what your customer base looks like. Please provide a list of all customer identification values, with a count of rentals they have made all-time, with your highest volume customers at the top of the list.

<img width="1243" alt="mcp8" src="https://user-images.githubusercontent.com/60319087/153744669-d1ec65e8-b98e-4d85-9297-d2b24d05b1bf.png">

___

 
### INTRODUCING THE FINAL COURSE PROJECT

`THE SITUATION :` You and your business partner were recently approached by another local business owner who is 
		  interested in purchasing Maven Movies. He primarily owns restaurants and bars, so he has lots 
	          of questions for you about your business and the rental business in general. His offer seems 
		  very generous, so you are going to entertain his questions.

`THE OBJECTIVE :` Use MySQL to:->
		  Leverage your SQL skills to extract and analyze data from various tables in the Maven Movies 
                  database to answer your potential Acquirer’s questions. Each question will require you to write 
                  a multi-table SQL query, joining at least two tables.

`THE LETTER :` Dear Maven Movies Management,
	       I am excited about the potential acquisition and learning more about your rental business.
	       Please bear with me as I am new to the industry, but I have a number of questions for you. 
               Assuming you can answer them all, and that there are no major surprises, we should be able 
               to move forward with the purchase.
	       Best,
	       Martin Moneybags
             
***FINAL COURSE PROJECT QUESTIONS*** 
 
- My partner and I want to come by each of the stores in person and meet the managers. Please send over 
--   the managers’ names at each store, with the full address of each property (street address, district, 
--   city, and country please).

-- 2.I would like to get a better understanding of all of the inventory that would come along with the business. 
--   Please pull together a list of each inventory item you have stocked, including the store_id number, the 
--   inventory_id, the name of the film, the film’s rating, its rental rate and replacement cost.

-- 3.From the same list of films you just pulled, please roll that data up and provide a summary level overview 
-- of your inventory. We would like to know how many inventory items you have with each rating at each store.

-- 4.Similarly, we want to understand how diversified the inventory is in terms of replacement cost. We want to 
--   see how big of a hit it would be if a certain category of film became unpopular at a certain store.
--   We would like to see the number of films, as well as the average replacement cost, and total replacement 
--   cost, sliced by store and film category.

-- 5.We want to make sure you folks have a good handle on who your customers are. Please provide a list of all 
--   customer names, which store they go to, whether or not they are currently active, and their full addresses 
--   – street address, city, and country.

-- 6.We would like to understand how much your customers are spending with you, and also to know who your most 
--   valuable customers are. Please pull together a list of customer names, their total lifetime rentals, and 
--   the sum of all payments you have collected from them. It would be great to see this ordered on total 
--   lifetime value, with the most valuable customers at the top of the list.

-- 7.My partner and I would like to get to know your board of advisors and any current investors. Could you 
--   please provide a list of advisor and investor names in one table? Could you please note whether they are 
--   an investor or an advisor, and for the investors, it would be good to include which company they work with.

-- 8.We're interested in how well you have covered the most-awarded actors. Of all the actors with three types 
--   of awards, for what % of them do we carry a film? And how about for actors with two types of awards? Same 
--   questions. Finally, how about actors with just one award ?
