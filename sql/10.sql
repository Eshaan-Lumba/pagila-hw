/*
 * Use a JOIN to list each film and the number of actors who are listed for that film.
 * Use tables film and film_actor.
 */

select title, film_id, count(actor_id) AS actor_count from film join film_actor using (film_id) GROUP BY film_id, title ORDER BY actor_count, title;
