#Intro To SELECT - Group B

# SELECT first_name, last_name, last_name, last_name, actor_id + 10        #Select List
# FROM Actor;              #FROM Clause

#Example of Using WHERE clause with multiple criteria
SELECT first_name, last_name        #Select List
FROM Actor      #FROM Clause
WHERE last_name = 'Zellweger'
    AND first_name = 'Minnie';

#Examples of using different operators
SELECT first_name, last_name
FROM Actor
WHERE last_name <> 'Zellweger';

SELECT *        #Example using < or >
FROM payment
WHERE amount > 11;

SELECT *        #Example using BETWEEN AND
FROM payment
WHERE amount BETWEEN 3 AND 5;

#Example of using IN (We also changed it use NOT IN)
SELECT *
FROM actor
WHERE last_name NOT IN ('Zellweger', 'Guiness', 'Dern', 'Bale');

#Example of using IS NULL and IS NOT NULL
SELECT *
FROM address
WHERE address2 IS NOT null;     #YOU CAN'T EQUAL NULL (must use IS NULL)

#Examples of using wildcards (LIKE)
SELECT *
FROM actor
WHERE last_name LIKE '%K';

SELECT *
FROM film
WHERE description LIKE '%Moose%'
    AND description LIKE '%Crocodile%';

SELECT *
FROM Actor
WHERE last_name LIKE '_a%';

#Examples of Column Aliasing
SELECT first_name AS "First Name",
       last_name AS "Last Name"
FROM actor;

SELECT CONCAT(first_name, ' ', last_name) AS "Full Name"   #Concatenation function, takes as many values as you want
FROM actor;

SELECT * from actor where last_name = 'Zellweger';

#Sorting
SELECT first_name,
       last_name
FROM actor
WHERE last_name LIKE 'A%' OR last_name LIKE 'B%'
ORDER BY last_name DESC, first_name ASC;

