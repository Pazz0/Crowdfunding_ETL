-- Challenge Bonus queries.
-- 1. (2.5 pts)
-- Retrieve all the number of backer_counts in descending order for each `cf_id` for the "live" campaigns. 
SELECT ca.cf_id,
	ca.backers_count
FROM campaign AS ca
WHERE (ca.outcome ='live')
ORDER BY ca.backers_count DESC; 

-- 2. (2.5 pts)
-- Using the "backers" table confirm the results in the first query.
SELECT * FROM backers;

-- 3. (5 pts)
-- Create a table that has the first and last name, and email address of each contact.
-- and the amount left to reach the goal for all "live" projects in descending order. 
SELECT co.first_name,
	co.last_name,
	co.email,
	(ca.goal - ca.pledged) AS Remaining_Goal_Amount
INTO email_contacts_remaining_goal_amount
FROM campaign as ca
INNER JOIN contacts AS co
ON (ca.contact_id = co.contact_id)
WHERE (ca.outcome = 'live')
ORDER BY remaining_goal_amount DESC;


-- Check the table
SELECT * FROM email_contacts_remaining_goal_amount


-- 4. (5 pts)
-- Create a table, "email_backers_remaining_goal_amount" that contains the email address of each backer in descending order, 
-- and has the first and last name of each backer, the cf_id, company name, description, 
-- end date of the campaign, and the remaining amount of the campaign goal as "Left of Goal". 
SELECT ba.email,
	ba.first_name,
	ba.last_name,
	ba.cf_id,
	ca.company_name,
	ca.description,
	ca.end_date,
	(ca.goal - ca.pledged) AS Left_Of_Goal
INTO email_backers_remaining_goal_amount
FROM campaign as ca
INNER JOIN backers AS ba
ON (ca.cf_id = ba.cf_id)
ORDER BY email DESC;

-- Check the table
SELECT * FROM email_backers_remaining_goal_amount
