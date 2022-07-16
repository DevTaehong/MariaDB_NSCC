USE sakila;

#Query 1
SELECT film_id FilmID, title Movie, name Language
FROM film
INNER JOIN language ON film.language_id = language.language_id
WHERE rating = 'PG-13';

#Query 2
SELECT customer.customer_id CustomerID, sum(amount) AS 'Total $ - August Rentals'
FROM customer
INNER JOIN rental ON customer.customer_id = rental.customer_id
INNER JOIN payment ON rental.rental_id = payment.rental_id
WHERE MONTH(rental_date) = 8 AND customer.customer_id = 47;

#Query 3
SELECT staff.staff_id, last_name StaffName, count(payment_id) AS 'Num of Payments By staff'
FROM staff
INNER JOIN payment ON staff.staff_id = payment.staff_id
GROUP BY last_name;

#Query 4
SELECT first_name, last_name, title Movie, name Category
FROM actor
INNER JOIN film_actor ON actor.actor_id = film_actor.actor_id
INNER JOIN film ON film_actor.film_id = film.film_id
INNER JOIN film_category ON film.film_id = film_category.film_id
INNER JOIN category ON film_category.category_id = category.category_id
WHERE name = 'Animation'
ORDER BY last_name, title;

#Query 5
SELECT CONCAT(first_name, ' ', last_name) CustomerName, address, city, country
FROM customer
INNER JOIN address ON customer.address_id = address.address_id
INNER JOIN city ON address.city_id = city.city_id
INNER JOIN country ON city.country_id = country.country_id
WHERE country ='Germany'
ORDER BY city DESC;













