-- find the category name of all inventory items that have never been rented
-- Similar to exercise 9 with an additonal join
SELECT
  category.name
from
  category
  left join film_category on film_category.category_id = category.category_id
  left join film on film.film_id = film_category.film_id
  inner join inventory on inventory.film_id = film.film_id
  left join rental on rental.inventory_id = inventory.inventory_id
WHERE
  rental.rental_date IS null