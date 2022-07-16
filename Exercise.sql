CREATE DATABASE Countries;

USE Countries;

DROP TABLE countries;
CREATE TABLE Countries(
    Country_Name char(20) not null ,
    Population integer not null ,
    Total_Land_Area integer not null,
    CountryID integer PRIMARY KEY AUTO_INCREMENT
);

INSERT INTO Countries(Country_Name, Population, Total_Land_Area)
    VALUE
        ('Honduras',8143564,43278),
        ('Hungary',9976062,35919),
        ('Iceland',311058,39768),
        ('India',1189172906,1269338),
        ('Indonesia',245613043,741096),
        ('Iran',77891220,636293),
        ('Iraq',30399572,168753),
        ('Ireland',4670976,27135),
        ('Israel',7473052,8019),
        ('Italy',61016804,116305);



