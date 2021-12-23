--Revising the Select Query I
select * from city where POPULATION >100000 and CONTRYCODE="USA"
--Revising the Select Query II
select NAME from CITY where POPULATION > 120000 and COUNTRYCODE="USA"
--Select All
select * from CITY
--Query all columns for a city in CITY with the ID 1661.
SELECT * FROM CITY WHERE ID=1661
--Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
SELECT * FROM CITY WHERE COUNTRYCODE="JPN"
--Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
SELECT NAME FROM CITY WHERE COUNTRYCODE="JPN"
--Query a list of CITY and STATE from the STATION table.
SELECT CITY,STATE FROM STATION
--Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
SELECT DISTINCT(CITY) FROM STATION WHERE (ID%2=0)
--Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
SELECT COUNT(CITY)-COUNT(DISTINCT(CITY)) FROM STATION
--Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
SELECT DISTINCT(CITY) FROM STATION WHERE LEFT(CITY,1) IN ('a','i','u','e','o')
--Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
SELECT DISTINCT(CITY) FROM STATION WHERE RIGHT(CITY,1) IN ('a','i','u','e','o')
--Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
SELECT DISTINCT(CITY) FROM STATION WHERE LEFT(CITY,1) IN ('a','i','u','e','o') AND RIGHT(CITY,1) IN ('a','i','u','e','o')
--Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
SELECT DISTINCT(CITY) FROM STATION WHERE LEFT(CITY,1) NOT IN ('a','i','u','e','o')
--Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT(CITY) FROM STATION WHERE RIGHT(CITY,1) NOT IN ('a','i','u','e','o')
--Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT(CITY) FROM STATION WHERE LEFT(CITY,1) NOT IN ('a','i','u','e','o') or RIGHT(CITY,1) NOT IN ('a','i','u','e','o')
-- Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT(CITY) FROM STATION WHERE LEFT(CITY,1) NOT IN ('a','i','u','e','o') and right(city,1) not in ('a','i','u','e','o')