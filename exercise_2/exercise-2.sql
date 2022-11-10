-- find all rental dates for customers with the first_name Patricia
-- use INNER JOIN FROM customer onto rental

SELECT rental.rental_date
from customer inner join rental on customer.customer_id = rental.customer_id
WHERE customer.first_name = 'Patricia'
-- first_name from customer
-- rental_date from rental