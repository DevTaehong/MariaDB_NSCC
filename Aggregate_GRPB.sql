USE aggregatesexample;

SELECT CustomerName,
       SUM(InvoiceAmount) AS TotalPerCustomer
FROM Invoice
GROUP BY CustomerName
ORDER BY CustomerName DESC;

# UPDATE Invoice SET InvoiceAmount = 1600 WHERE CustomerName = 'Smith';

#Example of using GROUP BY, HAVING and a subquery, together!
SELECT customer_id, AVG(amount), SUM(amount)
FROM sakila.payment
WHERE Month(payment_date) = 5
GROUP BY customer_id
HAVING AVG(amount) >=
       (SELECT AVG(amount) FROM sakila.payment WHERE Month(payment_date) = 5);

SELECT * FROM sakila.payment WHERE customer_id = 7


