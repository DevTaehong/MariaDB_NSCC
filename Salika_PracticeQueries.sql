##########################################################
# Use the Sakila database to build the following queries #
##########################################################
USE sakila;
#1. Create a query that returns the email address for customer Alfred Casillas (1 record)
SELECT first_name, last_name, email
FROM customer
WHERE first_name = 'Alfred' AND last_name = 'Casillas';

#2. Create a query that returns a list of all film categories, sorted in reverse alphabetical order. (16 records)
SELECT *
FROM film_category
ORDER BY film_id DESC;

#3. Create a query that returns all movies that are about a lumberjack.  (72 records)
SELECT *
FROM film
WHERE description LIKE '%lumberjack%';


#4. Create a query that returns customers who shop at store #2.  (273 records)
SELECT *
FROM customer
WHERE store_id = '2';

#5. Create a query that returns a list of the names and ratings for all films rated R or
# NC-17, sorted by rating (NC-17 first, then R), then by film name in alphabetical order. (405 records)
SELECT title, rating
FROM film
WHERE rating = 'R'
   OR rating = 'NC-17'
ORDER BY rating DESC , title ASC;


#6. Create a query that returns only a list of city names, for all Canadian cities.  (7 records)
SELECT city
FROM city
WHERE country_id = 20;

#7. Create a query that returns any language with name ending in 'n'.  (3 records)
SELECT *
FROM language
WHERE name LIKE '%n';

#8. Create a query that returns any film name that begins with B, F or G   (155 records)
SELECT title
FROM film
WHERE title LIKE 'B%' OR title LIKE 'F%' OR title LIKE 'G%';

#9. Create a query that returns the 5 highest payment amounts.
SELECT amount
FROM payment
ORDER BY amount DESC LIMIT 5;


#10. Create a query that returns the title and length of the 3 shortest movies in the db. Rename
# the title column as Shorts and the time column as Minutes.
SELECT title AS "Shorts", length AS "Minutes"
FROM film
ORDER BY length
LIMIT 3;

#11. Create a query that returns all actors with a first name of Tom or a last name of Cruise.
#Display only the name fields, renamed as First and Last. (3 records)
SELECT CONCAT(first_name, ' ', last_name) AS "First and Last"
FROM actor
WHERE first_name = 'Tom' OR last_name = 'Cruise';

#12. Create a query to return a list containing the addresses, districts and postal codes for all
# addresses in the district of Buenos Aires, sorted by street number and postal code. (10 records)
SELECT address, district, postal_code
FROM address
WHERE district = 'Buenos Aires'
ORDER BY address, postal_code;

#13. Create a query that displays a list of all unique district names from the address
# table, sorted alphabetically. (378 records)
SELECT DISTINCT district
FROM address
ORDER BY district;

#14. Create a query that returns all payment records made by customer 25 with an
# amount less than $8 but higher than $5. Sort from highest to lowest. (4 records)
SELECT *
FROM payment
WHERE

#15. Create a query that returns addresses that do not have ANY value for the second
# address field.  (4 records)


#16. Create a query that returns a list of all cities from the country of Chile. Do NOT
# use any hard-coded country IDs!
SELECT *
FROM city
WHERE country_id = (SELECT country_id FROM country WHERE country = 'Chile');

#17. Create a query that returns a list of all actor records whose first name does NOT
# start with a vowel. Sort by first, then last name and rename the first name field
# as "Vowel-less Firsts".   (176 records)
SELECT first_name AS "Vowel-less Fisrt", last_name
FROM actor
WHERE first_name NOT LIKE 'A%'
    AND first_name NOT LIKE 'E%'
    AND first_name NOT LIKE 'I%'
    AND first_name NOT LIKE 'O%'
    AND first_name NOT LIKE 'U%'
ORDER BY first_name, last_name;
