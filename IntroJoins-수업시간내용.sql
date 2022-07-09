# USE constraintstuff;
# SELECT MonsterName, TypeName
# FROM Monster                 #PK AT  =  #FK Mon
#     INNER JOIN attacktype ON TypeID = AttackType
# WHERE MonsterName = 'Dragon';

#FOR REFERENCE (from the slides)
#   INNER                       PK      FK
# (Join type) JOIN TableB ON column1 = column2


USE Sakila;
SELECT *#city.city,
       #country.country
FROM City                   #PK                 #FK
    INNER JOIN Country ON country.country_id = city.country_id
WHERE country.country = 'Chile';

#Which films does each actor appear in? Name of actor, name of movie
SELECT first_name AS banana,    #Column aliasing
       last_name,
       title,
       name,
       a.actor_id
FROM actor a
    #Lotsa joins --> FOLLOW THE PK TO FK PATH (ERD)
    INNER JOIN film_actor fa ON a.actor_id = fa.actor_id
    INNER JOIN film movie ON fa.film_id = movie.film_id
    INNER JOIN film_category fc ON fc.film_id = movie.film_id
    INNER JOIN category c ON fc.category_id = c.category_id
# WHERE movie.film_id = 12
ORDER BY c.name ASC;

SELECT * FROM Actor bla; #Example of table aliasing

SELECT cty.country AS "Boo" #Example of column aliasing
FROM country cty;
