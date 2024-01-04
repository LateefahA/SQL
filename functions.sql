show databases;
use world;
show tables in world;
select * from country;
SELECT CURRENT_DATE();
SELECT COUNT(*) AS Language FROM countrylanguage; 
SELECT COUNT(Name) total_cities, AVG(Population) Avg_population FROM city;
SELECT Population, AVG(LifeExpectancy) FROM country WHERE Code= 'SGP';
SELECT SUM(Population) FROM country;
SELECT DISTINCT CountryCode, District FROM city;
SELECT COUNT(DISTINCT CountryCode) AS Unique_Country_Codes FROM city;
SELECT CHAR_LENGTH('Lateefat');
SELECT INSERT ("Lateefat",1,3, 'Arogun');
SELECT INSERT ("Population",1,2, 'Mani'); 
SELECT ID, RTRIM(District) District FROM city;
SELECT ID, LTRIM(Name) Name FROM city;

SELECT sum(Population), avg(Population), max(Population), min(Population), count(Population) FROM world.country;
SELECT Region, substring_index(Region, " ", 1) FROM world.country;
SELECT Name, Region from world.country WHERE substring_index(Region, " ", 1) = "Southern";
SELECT Region FROM world.country WHERE LENGTH(TRIM(Region)) < 10;
SELECT DISTINCT(Region) FROM world.country WHERE LENGTH(TRIM(Region)) < 10;
SELECT Name, substring_index(Region, "/", 1) as "Region Name 1",substring_index(region, "/", -1) as "Region Name 2" FROM world.country WHERE Region = "Micronesia/Caribbean";

SELECT name, continent, surfacearea FROM country WHERE surfacearea >= 5000000 ORDER BY continent ASC, surfacearea DESC;
SELECT name, continent, surfacearea FROM country WHERE surfacearea >= 5000000 ORDER BY 2 ASC, 3 DESC;
SELECT continent, name FROM country WHERE (continent='South America' AND population > 20000000) OR continent = 'Antarctica' ORDER BY 1,2;
SELECT continent, COUNT(name) AS 'countries' FROM country WHERE (continent = 'South America' AND population > 12000000) OR continent = 'Antarctica' GROUP BY continent ORDER BY 1,2;
SELECT continent, COUNT(name) AS 'countries' FROM country WHERE (continent = 'South America' AND population > 12000000) OR continent = 'Antarctica' GROUP BY continent HAVING COUNT(name) > 5 ORDER BY 1,2;

SELECT name, region, population, RANK() OVER POP ‘pop_rank’ 
FROM country 
WHERE region in ('Caribbean', "polynesian") 
AND population < 70000 
WINDOW POP AS (ORDER BY population);

SELECT Region, Name, Population FROM world.country WHERE Region = 'Australia and New Zealand' ORDER By Population desc;
SELECT Region, SUM(Population) FROM world.country WHERE Region = 'Australia and New Zealand' GROUP By Region ORDER By SUM(Population) desc;
SELECT Region, Name, Population, SUM(Population) OVER(partition by Region ORDER BY Population) as 'Running Total' FROM world.country WHERE Region = 'Australia and New Zealand';
SELECT Region, Name, Population, SUM(Population) OVER(partition by Region ORDER BY Population) as 'Running Total', RANK() over(partition by region ORDER BY population) as 'Ranked' FROM world.country WHERE region = 'Australia and New Zealand';

select * from country;

select name, region, population,
RANK() OVER POP ‘pop_rank’ 
from world.country 
WINDOW POP AS (order by population desc);

SELECT Region, Name, Population, 
RANK() OVER(partition by Region 
ORDER BY Population desc) as 'Ranked' 
FROM world.country order by Region, Ranked;

SELECT Name, District, Population FROM city 
UNION 
SELECT Name, Code, Population FROM Country;

SELECT Name, District, Population FROM city 
UNION ALL
SELECT Name, Code, Population FROM Country;

SELECT city.Name AS Cities, country.name AS countries 
FROM city 
INNER JOIN Country 
ON city.CountryCode = country.code;

SELECT city.Name AS cities, 
country.Name AS countries, 
country.Region
From city 
INNER JOIN country 
ON city.CountryCode = country.code;

