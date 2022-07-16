#CREATE DATABASE TC3;
USE TC3;

DROP TABLE IF EXISTS Employee_Project;
DROP TABLE IF EXISTS Employee;
DROP TABLE IF EXISTS Project;
DROP TABLE IF EXISTS Project_Category;

CREATE TABLE Employee (
    Employee_ID INTEGER PRIMARY KEY AUTO_INCREMENT,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    Email_Address VARCHAR(100) NOT NULL UNIQUE,
    Hire_Date DATETIME
);

CREATE TABLE Project (
    Project_ID integer PRIMARY KEY AUTO_INCREMENT,
    Project_Name VARCHAR(50) NOT NULL UNIQUE,
    Start_Date DATE NOT NULL,
    End_Date DATETIME NOT NULL,
    Budget FLOAT,
    Category_ID INTEGER NOT NULL,
    CONSTRAINT CHECK (Budget <= 99999.99)
);

CREATE TABLE Employee_Project (
    Employee_Project_ID INTEGER PRIMARY KEY AUTO_INCREMENT,
    Project_ID INTEGER NOT NULL,
    Employee_ID INTEGER NOT NULL,
    Project_Lead BIT NOT NULL DEFAULT FALSE
);

CREATE TABLE Project_Category (
    Category_ID INTEGER PRIMARY KEY AUTO_INCREMENT,
    Category_Name VARCHAR(50) NOT NULL
);

ALTER TABLE Employee_Project ADD CONSTRAINT FOREIGN KEY (Project_ID) REFERENCES Project (Project_ID);
ALTER TABLE Employee_Project ADD CONSTRAINT FOREIGN KEY (Employee_ID) REFERENCES Employee (Employee_ID);
ALTER TABLE Project ADD CONSTRAINT FOREIGN KEY (Category_ID) REFERENCES Project_Category (Category_ID);


DESC employee;