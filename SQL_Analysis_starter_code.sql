-- Challenge Bonus queries.
-- 1. (2.5 pts)
-- Retrieve all the number of backer_counts in descending order for each `cf_id` for the "live" campaigns. 
SELECT ca.cf_id,
	ca.backers_count
FROM campaign AS ca
WHERE end_date = 
ORDER BY ca.backers_count DESC; 

-- 2. (2.5 pts)
-- Using the "backers" table confirm the results in the first query.



-- 3. (5 pts)
-- Create a table that has the first and last name, and email address of each contact.
-- and the amount left to reach the goal for all "live" projects in descending order. 
SELECT b.first_name,
	b.last_name,
	b.email_address
--INTO email_contacts_remaining_goal_amount
FROM backers as b



-- Check the table
SELECT * FROM email_contacts_remaining_goal_amount

-- 4. (5 pts)
-- Create a table, "email_backers_remaining_goal_amount" that contains the email address of each backer in descending order, 
-- and has the first and last name of each backer, the cf_id, company name, description, 
-- end date of the campaign, and the remaining amount of the campaign goal as "Left of Goal". 
SELECT email,
	first_name,
	last_name,
	cf_id,
	company_name,
	description
--INTO email_backers_remaining_goal_amount
FROM
ORDER BY email DESC

-- Check the table
SELECT * FROM email_backers_remaining_goal_amount

