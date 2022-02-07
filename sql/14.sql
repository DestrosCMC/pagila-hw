/*
 * Use a JOIN to list all films in the "Family" category.
 * Use table category, film_category, and film.
 */
SELECT f.title
from film f
INNER JOIN film_category fi ON fi.film_id = f.film_id
INNER JOIN category c ON c.category_id = fi.category_id
WHERE c.name ='Family'
ORDER BY f.title;
