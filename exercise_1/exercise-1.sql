-- find all address_id of addresses in the city of Dundee
-- use INNER JOIN FROM address on to city
SELECT address.address_id
from address inner join city on address.city_id = city.city_id
WHERE
    city.city = 'Dundee'