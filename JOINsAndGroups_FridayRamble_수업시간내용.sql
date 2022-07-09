# SELECT actor.actor_id,
#        actor.first_name,
#        actor.last_name,
#        count(film.film_id)
SELECT *# title, rental.inventory_id, count(rental.rental_id), sum(p.amount)
# FROM actor
#     INNER JOIN film_actor ON film_actor.actor_id = actor.actor_id
FROM film
    INNER JOIN language l on film.language_id = l.language_id
    INNER JOIN inventory ON film.film_id = inventory.film_id
    INNER JOIN rental ON inventory.inventory_id = rental.inventory_id
    INNER JOIN payment p on rental.rental_id = p.rental_id

WHERE store_id = 1
GROUP BY title, rental.inventory_id
HAVING sum(amount) > 5;


SELECT *
FROM Rental

SELECT *
FROM Film WHERE film_id = 39

SELECT * FROM inventory WHERE film_id = 39

SELECT * FROM Rental WHERE inventory_id BETWEEN 174 AND 180