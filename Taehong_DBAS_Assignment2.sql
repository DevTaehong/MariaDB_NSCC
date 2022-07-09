USE sakila;

#Query 1
SELECT title
FROM film
WHERE language_id = 1
ORDER BY title ASC;

#Query 2
SELECT title
FROM film
WHERE description LIKE '%Drama%';

#Query 3
SELECT title, rating
FROM film
WHERE rating in ('G', 'PG', 'PG-13')
ORDER BY rating, title;

#Query 4
SELECT payment_id, payment_date, amount
FROM payment
WHERE amount < 2.99 AND payment_date > '2005-06-01'
ORDER BY payment_date, amount;

#Query 5
SELECT city
FROM city
WHERE Country_id = (SELECT country_id FROM country WHERE country = 'Canada')
ORDER BY city DESC;

#Query 6
SELECT DISTINCT title
FROM film
WHERE title LIKE 'A%' OR title LIKE '%t'
ORDER BY title DESC;

#Query 7
SELECT customer_id, count(customer_id) AS 'Count'
FROM payment
GROUP BY customer_id
ORDER BY Count DESC;

#Query 8
SELECT customer_id, MAX(amount) AS 'max'
FROM payment
WHERE amount > 5.99
GROUP BY customer_id
ORDER BY max DESC, customer_id;

#Query 9
SELECT customer_id, count(customer_id) AS 'count'
FROM rental
GROUP BY customer_id
ORDER BY count DESC;

#Query 10
SELECT customer_id, amount
FROM payment
WHERE staff_id = 1 AND amount > 7
ORDER BY customer_id DESC, amount;

#Query 11
SELECT category_id, count(category_id) AS 'Cat_Count'
FROM film_category
GROUP BY category_id
HAVING Cat_Count > 60
ORDER BY Cat_Count DESC;

#Query 12
SELECT title
FROM film
WHERE film_id IN (SELECT film_id FROM film_actor WHERE actor_id = 107)
ORDER BY title ASC;

#Query 13
SELECT actor_id, count(actor_id) AS 'film_count'
FROM film_actor
GROUP BY actor_id
HAVING film_count > 36
ORDER BY film_count DESC;

#Query 14
SELECT count(film_id) AS 'Total Not in Inventory'
FROM film
WHERE film_id NOT IN (SELECT film_id FROM inventory);

#Query 15
SELECT film_id
FROM film_actor
WHERE actor_id = (SELECT actor_id FROM actor WHERE first_name = 'RIP' AND last_name = 'CRAWFORD')
ORDER BY film_id ASC;

































