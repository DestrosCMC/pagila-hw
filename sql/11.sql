/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title alphabetically.
 */
SELECT f.film_id, f.title, count(i.film_id)
FROM film f
INNER JOIN inventory i ON f.film_id = i.film_id
WHERE LEFT(f.title, 1) = 'H'
GROUP BY f.film_id, f.title
ORDER BY title DESC;
