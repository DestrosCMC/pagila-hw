/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */
SELECT c.name, count(*) AS sum
FROM category c
INNER JOIN film_category fi ON c.category_id = fi.category_id
INNER JOIN film f ON fi.film_id = f.film_id
INNER JOIN language l on f.language_id = l.language_id
WHERE l.name = 'English'
GROUP BY c.name
ORDER BY c.name;
