#Student name: Taehong Min
#Script name: DDL_PartThree_ConstraintsOnly
#Description: Creating constraints only by using ALTER TABLE


#Prodcut table constraints by using ALTER TABLE
ALTER TABLE product ADD CONSTRAINT PRIMARY KEY (ProductID), AUTO_INCREMENT = 0;
ALTER TABLE product MODIFY ProductName varchar(50) NOT NULL;
ALTER TABLE product MODIFY ProductCode char(8) NOT NULL UNIQUE;
ALTER TABLE product MODIFY RetailPrice float NOT NULL;
ALTER TABLE product MODIFY ProductRating integer NOT NULL;
ALTER TABLE product MODIFY NumberInStock integer NOT NULL DEFAULT 0;
ALTER TABLE product MODIFY IsActive bit NOT NULL DEFAULT TRUE;
ALTER TABLE product MODIFY IsDiscontinued bit NOT NULL DEFAULT FALSE;
ALTER TABLE product ADD CONSTRAINT CHECK (RetailPrice > 0);
ALTER TABLE product ADD CONSTRAINT CHECK ( SalePrice > 0 );
ALTER TABLE product ADD CONSTRAINT CHECK ( ProductRating <= 5 AND ProductRating >= 1 );

#Supplier table constraints by using ALTER TABLE
ALTER TABLE supplier ADD CONSTRAINT PRIMARY KEY (SupplierID), AUTO_INCREMENT = 0;
ALTER TABLE supplier MODIFY SupplierName varchar(100) NOT NULL;
ALTER TABLE supplier MODIFY Address varchar(255) NOT NULL;
ALTER TABLE supplier MODIFY IsActive binary(10) NOT NULL DEFAULT TRUE;

#ClothingCategory table constraints by using ALTER TABLE
ALTER TABLE clothingcategory ADD CONSTRAINT PRIMARY KEY (CategoryID), AUTO_INCREMENT = 0;
ALTER TABLE clothingcategory MODIFY CategoryName varchar(50) NOT NULL;
ALTER TABLE clothingcategory MODIFY IsActive bit NOT NULL DEFAULT TRUE;

#ClothingSize table constraints by using ALTER TABLE
ALTER TABLE clothingsize ADD CONSTRAINT PRIMARY KEY (SizeID), AUTO_INCREMENT = 0;
ALTER TABLE clothingsize MODIFY SizeName varchar(50) NOT NULL;
ALTER TABLE clothingsize MODIFY SizeAbbreviation varchar(3) NOT NULL;
ALTER TABLE clothingsize MODIFY IsActive bit NOT NULL DEFAULT TRUE;
ALTER TABLE clothingsize ADD CONSTRAINT CHECK (SizeAbbreviation = 'XS' or SizeAbbreviation = 'S'
            or SizeAbbreviation = 'M' or SizeAbbreviation = 'L' or SizeAbbreviation = 'XL' or SizeAbbreviation = 'XXLCC');

#Colour table constraints by using ALTER TABLE
ALTER TABLE colour ADD CONSTRAINT PRIMARY KEY (ColourID), AUTO_INCREMENT = 0;
ALTER TABLE colour MODIFY ColourName varchar(50) NOT NULL;
ALTER TABLE colour MODIFY ColourCode char(3) NOT NULL UNIQUE;
ALTER TABLE colour MODIFY IsActive bit NOT NULL DEFAULT TRUE;















