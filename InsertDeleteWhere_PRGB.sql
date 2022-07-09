#CREATE DATABASE dmltesterdb;

USE dmltesterdb;

DROP TABLE IF EXISTS Persons;
CREATE TABLE Persons (
  PersonID int PRIMARY KEY AUTO_INCREMENT,
  LastName varchar(30) NOT NULL,
  FirstName varchar(30) NOT NULL,
  Address varchar(50) NOT NULL,
  City varchar(30) NOT NULL DEFAULT 'Halifax'
);

INSERT INTO Persons (LastName, FirstName, Address, City)
    VALUES ('Smith', 'Bob', '123 Bob St', 'Halifax'),
           ('Jones', 'Steve', '456 Steve St', 'Halifax'),
           ('Johnson', 'Kari', '789 Main St', 'Dartmouth');

INSERT INTO Persons (LastName, FirstName, Address, City)
    VALUES ('Gillespie', 'Bob', '123 Oak St', 'Halifax'),
           ('Jones', 'Bob', '456 Maple St', 'Halifax');

INSERT INTO Persons (PersonID, LastName, FirstName, Address, City)
    VALUES (1, 'Reeves', 'Keanu', '123 Robie', 'Yarmouth');

UPDATE Persons
    SET Address = '456 New Ave', City = 'BobTown'
    WHERE FirstName = 'Bob';

DELETE FROM actor WHERE FirstName = 'Taehong';


DELETE FROM film WHERE film_id = 363;


#PREVIEW OF NEXT WEEK
#SELECT * FROM Persons WHERE FirstName = 'Bob';