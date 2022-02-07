/*
 * Use a JOIN to list each film and the number of actors who are listed for that film.
 * Use tables film and film_actor.
 */
select f.title, f.film_id,count(a.actor_id) as actor_count
from film as f
INNER join film_actor a on f.film_id = a.film_id
GROUP BY f.film_id
HAVING count(a.actor_id) > 0
ORDER BY actor_count, title;
