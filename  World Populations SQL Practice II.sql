SELECT COUNT(*) as 'Entries_Africa'
FROM countries
WHERE continent = 'Africa';

SELECT SUM(population) as 'Oceania_2005_Population'
FROM countries
JOIN population_years
ON countries.id = population_years.country_id
WHERE continent = 'Oceania'
AND year = 2005;

SELECT ROUND(AVG(population),2) as 'SouthAmerica_2003_AVGPopulation'
FROM countries
JOIN population_years
ON countries.id = population_years.country_id
WHERE continent = 'South America'
AND year = 2003;

SELECT countries.name, MIN(population_years.population) as 'Smallest_2007_population'
FROM countries
JOIN population_years
ON countries.id = population_years.country_id
WHERE year = 2007;

SELECT ROUND(AVG(population),2) as 'Poland_population'
FROM countries
JOIN population_years
ON countries.id = population_years.country_id
WHERE countries.name = 'Poland';

SELECT COUNT(DISTINCT name)
FROM countries
WHERE name LIKE '%The%'; 

SELECT countries.name, population_years.population 
FROM countries
JOIN population_years
ON countries.id = population_years.country_id
WHERE year = 2010
ORDER BY countries.name; 
