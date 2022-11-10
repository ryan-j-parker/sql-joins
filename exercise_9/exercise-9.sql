-- find the film title of all inventory items that have never been rented
-- LEFT JOIN FROM inventory to film and to rental
-- use WHERE IS NULL

SELECT title from film
inner join inventory 
ON film.film_id = inventory.film_id
left join rental 
ON inventory.inventory_id = rental.inventory_id
WHERE rental.rental_id IS null