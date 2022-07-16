USE sakila;

#Query 1
SELECT store.store_id, first_name, last_name
FROM store
INNER JOIN staff ON store.store_id = staff.store_id;

#Query 2
SELECT city, country
FROM city
INNER JOIN country ON city.country_id = country.country_id
ORDER BY country;

#Query 3
SELECT last_name LastName, first_name FirstName, count(film_id) AS '# Movies'
FROM actor
INNER JOIN film_actor ON actor.actor_id = film_actor.actor_id
GROUP BY last_name, first_name
ORDER BY count(film_id) DESC;

#Query 4
SELECT customer_id, last_name, first_name, city, country
FROM customer
INNER JOIN address on address.address_id = customer.address_id
INNER JOIN city on city.city_id = address.city_id
INNER JOIN country on country.country_id = city.country_id
WHERE country = 'Japan'
ORDER BY city, last_name, first_name;

#Query 5
SELECT CONCAT(last_name, ', ', first_name) AS 'ActorName', title Movie, rating MovieRating
FROM film
INNER JOIN film_actor ON film.film_id = film_actor.film_id
INNER JOIN actor a on film_actor.actor_id = a.actor_id
WHERE rating = 'G' AND last_name = 'OLIVIER' AND first_name = 'AUDREY';

#Query 6
SELECT first_name, last_name, sum(amount) AS 'Profits on Returned Movies - July 2005'
FROM rental
INNER JOIN payment ON rental.rental_id = payment.rental_id
INNER JOIN staff s on payment.staff_id = s.staff_id
WHERE MONTH(return_date) = 7
GROUP BY first_name;

#Query 7
SELECT title, count(inventory.film_id) AS '# Available', rating, length, special_features
FROM film
INNER JOIN inventory ON film.film_id = inventory.film_id
INNER JOIN store s on inventory.store_id = s.store_id
WHERE s.store_id = 1 AND rating = 'R' AND length < 120 AND special_features LIKE '%Deleted Scenes%'
GROUP BY inventory.film_id, length
ORDER BY length;

#Query 8
SELECT last_name LastName, first_name FirstName, sum(amount)
FROM actor
INNER JOIN film_actor fa on actor.actor_id = fa.actor_id
INNER JOIN film f on fa.film_id = f.film_id
INNER JOIN inventory i on f.film_id = i.film_id
INNER JOIN rental r on i.inventory_id = r.inventory_id
INNER JOIN payment p on r.rental_id = p.rental_id
GROUP BY last_name, first_name
ORDER BY sum(amount) DESC
LIMIT 5;

#Query 9
SELECT title MovieRented, name Categoty, CONCAT(first_name, ' ', last_name) Customer, country
FROM category
INNER JOIN film_category fc on category.category_id = fc.category_id
INNER JOIN film f on fc.film_id = f.film_id
INNER JOIN inventory i on f.film_id = i.film_id
INNER JOIN rental r on i.inventory_id = r.inventory_id
INNER JOIN customer on r.customer_id = customer.customer_id
INNER JOIN address on customer.address_id = address.address_id
INNER JOIN city on address.city_id = city.city_id
INNER JOIN country on city.country_id = country.country_id
WHERE (name = 'Comedy' OR name = 'Action') AND country = 'Canada'
ORDER BY title;

#Query 10
SELECT last_name LastName, first_name FirstName, name Category, count(*) AS '# Rented'
FROM film
INNER JOIN inventory ON film.film_id = inventory.film_id
INNER JOIN rental ON inventory.inventory_id = rental.inventory_id
INNER JOIN customer ON rental.customer_id = customer.customer_id
INNER JOIN film_category ON film.film_id = film_category.film_id
INNER JOIN category ON film_category.category_id = category.category_id
WHERE last_name = 'WASHINGTON' AND first_name = 'RUBY'
GROUP BY last_name, first_name, name;




















