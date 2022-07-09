#Student name: Taehong Min
#Script name: DDL_PartTwo_TableAndConstraints
#Description: Creating constraints within the Created table statements

CREATE DATABASE Products_DDL; #Creating database named Products_DDL

USE Products_DDL; #using Products_DDL database

#Deleteing exist tables from Part One to add constraints
DROP TABLE product;
DROP TABLE Supplier;
DROP TABLE ClothingCategory;
DROP TABLE ClothingSize;
DROP TABLE Colour;

#Creating table names Product, assigning data type and adding fields
CREATE TABLE Product (
    ProductID integer PRIMARY KEY AUTO_INCREMENT,
    ProductCode char(8) NOT NULL UNIQUE,
    ProductName varchar(50) NOT NULL,
    Description varchar(100),
    RetailPrice float NOT NULL,
    SalePrice float,
    ProductRating integer NOT NULL,
    NumberInStock integer NOT NULL DEFAULT 0,
    IsActive bit NOT NULL DEFAULT TRUE,
    IsDiscontinued bit NOT NULL DEFAULT FALSE,
    CONSTRAINT CHECK (RetailPrice > 0), CHECK ( SalePrice > 0 ), CHECK ( ProductRating <= 5 AND ProductRating >= 1 )
);

#Creating table names Supplier, assigning data type and adding fields
CREATE TABLE Supplier (
    SupplierID integer PRIMARY KEY AUTO_INCREMENT,
    SupplierName varchar(100) NOT NULL,
    Address varchar(255) NOT NULL,
    ContactName varchar(100),
    ContactPhone varchar(20),
    ContactEmail varchar(50),
    IsActive binary(10) NOT NULL DEFAULT TRUE
);

#Creating table names ClothingCategory, assigning data type and adding fields
CREATE TABLE ClothingCategory (
    CategoryID integer PRIMARY KEY AUTO_INCREMENT,
    CategoryName varchar(50) NOT NULL,
    IsActive bit NOT NULL DEFAULT TRUE
);

#Creating table names ClothingSize, assigning data type and adding fields
CREATE TABLE ClothingSize (
    SizeID integer PRIMARY KEY AUTO_INCREMENT,
    SizeName varchar(50) NOT NULL,
    SizeAbbreviation varchar(3) NOT NULL,
    IsActive bit NOT NULL DEFAULT TRUE,
    CONSTRAINT CHECK (SizeAbbreviation = 'XS' or SizeAbbreviation = 'S' #Must one of the values XS, S, M, L, XL, XXLCC
    or SizeAbbreviation = 'M' or SizeAbbreviation = 'L' or SizeAbbreviation = 'XL' or SizeAbbreviation = 'XXLCC')
);

#Creating table names Colour, assigning data type and adding fields
CREATE TABLE Colour (
    ColourID integer PRIMARY KEY AUTO_INCREMENT,
    ColourName varchar(50) NOT NULL,
    ColourCode char(3) NOT NULL UNIQUE,
    IsActive bit NOT NULL DEFAULT TRUE
);

















