-- the average film length by category
-- include the category name and avg length
SELECT
  AVG(film.length),
  category.name
from
  category
  join film_category on film_category.category_id = category.category_id
  join film on film.film_id = film_category.film_id
group by
  category.name