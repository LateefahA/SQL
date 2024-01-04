show databases;
use world;
show tables;
select * from city;
select id, name, countrycode from city where countrycode = 'BRA';
select * from city;
select countrycode, SUM(population)  as totalpopulation
from city group by countrycode;
select id, name, countrycode from city having countrycode = 'BRA';

select name, countrycode, population from city order by population;
select name, countrycode, population from city order by population desc;
select name, countrycode, population from city order by name;
select name, countrycode, population from city order by name desc;

select count(*) from city;
show tables;
select count(*) from country;
show columns from country;
SELECT Name, Capital, Region, SurfaceArea, Population FROM world.country;
SELECT Name, Capital, Region, SurfaceArea AS "Surface Area", Population FROM world.country;
SELECT Name, Capital, Region, SurfaceArea AS "Surface Area", Population FROM world.country ORDER BY Population;
SELECT Name, Capital, Region, SurfaceArea AS "Surface Area", Population FROM world.country ORDER BY Population DESC;
SELECT Name, Capital, Region, SurfaceArea AS "Surface Area", Population FROM world.country WHERE Population > 50000000 ORDER BY Population DESC;
SELECT Name, Capital, Region, SurfaceArea AS "Surface Area", Population FROM world.country WHERE Population > 50000000 AND Population < 100000000 ORDER BY Population DESC;
SELECT Name, Capital, Region, SurfaceArea AS "Surface Area", Population FROM world.country WHERE Region = 'Southern Europe' AND Population > 50000000;

SELECT * from world.country;
SELECT name, LifeExpectancy, LifeExpectancy+5.5 FROM country WHERE GNP > 1300000;
SELECT name, continent, population, population-350000 FROM country WHERE name = 'United States';
SELECT name, continent, population, population-350000 FROM country WHERE name = 'United States';
SELECT name, region, population, surfacearea, population/surfacearea FROM country WHERE population/surfacearea > 3000;

 Select name from city where countrycode = 'KOR' and district = 'seoul';
 SELECT name, district, population FROM city WHERE countrycode = 'IND' AND district = 'Delhi';
 SELECT name, district, population FROM city WHERE countrycode = 'IND' OR district = 'Delhi';
 SELECT name, district, population FROM city WHERE district IN ('Delhi','Punjab','Kerala');

SELECT name, district, population FROM city WHERE district LIKE 'West%';
SELECT countrycode, name FROM city WHERE countrycode LIKE '_B_';
SELECT countrycode, name, district, population FROM city WHERE population BETWEEN 500000 AND 505000;
SELECT name, district, population FROM city WHERE countrycode = 'CAN' AND district NOT IN ('Ontario','Alberta');
SELECT name, district, population FROM city WHERE countrycode = 'CAN' AND district <> 'Ontario' AND district <> 'Alberta';

SELECT name, lifeexpectancy, lifeexpectancy+5.5 AS newlifeexpectancy FROM country WHERE gnp > 1300000;
SELECT name, lifeexpectancy FROM country WHERE lifeexpectancy IS NULL;
SELECT name, lifeexpectancy FROM country WHERE lifeexpectancy IS NOT NULL;

SELECT COUNT(*) FROM world.country;
show columns from world.country;
select name, capital, region, surfacearea, population from world.country;
select name, capital, region, surfacearea, population from world.country order by population;
select name, capital, region, surfacearea, population from world.country order by population desc;
select name, capital, region, surfacearea as "Surface Area" from world.country where population > 50000000 order by population desc;
select name, capital, region, surfacearea as "Surface Area" from world.country where population > 50000000 and population < 100000000 order by population desc;

select * from country limit 4;
select country from customer where country like a;

show databases;
use world;
show tables in world;
select * from emp_details;
describe emp_details;








