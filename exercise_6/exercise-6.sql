-- find all film titles rented out by customers with the first_name Roberta
-- Similar to exercise 5
SELECT
  film.title
from
  film
  left join inventory on film.film_id = inventory.film_id
  left join rental on rental.inventory_id = inventory.inventory_id
  left join customer on customer.customer_id = rental.customer_id
WHERE
  customer.first_name = 'Roberta'