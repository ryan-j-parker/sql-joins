-- find the title and count of the top 10 most rented films
-- use COUNT to count each row
-- GROUP BY the film_id
-- ORDER in descending order
-- LIMIT 10
SELECT
  film.title,
  COUNT(rental.rental_id)
from
  film
  left join inventory on inventory.film_id = film.film_id
  left join rental on rental.inventory_id = inventory.inventory_id
group by
  film.film_id
ORDER by
  count desc
LIMIT
  10