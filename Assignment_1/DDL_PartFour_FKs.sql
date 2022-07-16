#Student name: Taehong Min
#Script name: DDL_PartFour_FKs
#Description: Creating foreign keys and junction tables

USE Products_DDL; #using Products_DDL database

#Creating ProductCategory Table's foreign keys
ALTER TABLE ProductCategory ADD CONSTRAINT FOREIGN KEY (ProductID) REFERENCES Product (ProductID);
ALTER TABLE ProductCategory ADD CONSTRAINT FOREIGN KEY (CategoryID) REFERENCES clothingcategory (CategoryID);

#Creating ProductSize Table's foreign keys
ALTER TABLE ProductSize ADD CONSTRAINT FOREIGN KEY (ProductID) REFERENCES Product (ProductID);
ALTER TABLE ProductSize ADD CONSTRAINT FOREIGN KEY (SizeID) REFERENCES clothingsize (SizeID);

#Creating ProductColour Table's foreign keys
ALTER TABLE ProductColour ADD CONSTRAINT FOREIGN KEY (ProductID) REFERENCES Product (ProductID);
ALTER TABLE ProductColour ADD CONSTRAINT FOREIGN KEY (ColourID) REFERENCES colour (ColourID);

#Creating Product Table's foreign keys and adding supplierID to make its foreign key
ALTER TABLE Product ADD CONSTRAINT FOREIGN KEY (SupplierID) REFERENCES supplier (SupplierID);
ALTER TABLE Product ADD SupplierID integer;

#Creating 3 junction tables to make foreign keys
CREATE TABLE ProductCategory (
    ProductID integer,
    CategoryID integer,
    CONSTRAINT PRIMARY KEY (ProductID, CategoryID)
);

CREATE TABLE ProductSize (
    ProductID integer,
    SizeID integer,
    CONSTRAINT PRIMARY KEY (ProductID, SizeID)
);

CREATE TABLE ProductColour (
    ProductID integer,
    ColourID integer,
    CONSTRAINT PRIMARY KEY (ProductID, ColourID)
);

