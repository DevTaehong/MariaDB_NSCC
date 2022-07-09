#Student name: Taehong Min
#Script name: DDL_PartOne_Tables
#Description: Creating basic basic table structures.

CREATE DATABASE Products_DDL; #Creating database named Products_DDL

USE Products_DDL; #using Products_DDL database

#Creating table names Product, assigning data type and adding fields
CREATE TABLE Product (
    ProductID integer,
    ProductCode char(8),
    ProductName varchar(50),
    Description varchar(100),
    RetailPrice float,
    SalePrice float,
    ProductRating integer,
    NumberInStock integer,
    IsActive bit,
    IsDiscontinued bit
);
#Creating table names Supplier, assigning data type and adding fields
CREATE TABLE Supplier (
    SupplierID integer,
    SupplierName varchar(100),
    Address varchar(255),
    ContactName varchar(100),
    ContactPhone varchar(20),
    ContactEmail varchar(50),
    IsActive binary(10)
);

#Creating table names ClothingCategory, assigning data type and adding fields
CREATE TABLE ClothingCategory (
    CategoryID integer,
    CategoryName varchar(50),
    IsActive bit
);

#Creating table names ClothingSize, assigning data type and adding fields
CREATE TABLE ClothingSize (
    SizeID integer,
    SizeName varchar(50),
    SizeAbbreviation varchar(3),
    IsActive bit
);

#Creating table names Colour, assigning data type and adding fields
CREATE TABLE Colour (
    ColourID integer,
    ColourName varchar(50),
    ColourCode char(3),
    IsActive bit
);

















