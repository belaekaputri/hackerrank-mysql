## Level Easy
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
--Query the Name of any student in STUDENTS who scored higher than 75  Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
SELECT NAME FROM STUDENTS WHERE MARKS > 75 ORDER BY RIGHT(NAME,3), ID ASC
--Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.
SELECT NAME FROM EMPLOYEE ORDER BY NAME ASC
--Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than $2000 per month who have been employees for less than 10 months. Sort your result by ascending employee_id.
SELECT NAME FROM EMPLOYEE WHERE SALARY > 2000 AND MONTHS < 10 ORDER BY EMPLOYEE_ID ASC
--Query a count of the number of cities in CITY having a Population larger than 100000
SELECT COUNT(NAME) FROM CITY WHERE POPULATION > 100000
--Query the total population of all cities in CITY where District is California.
SELECT SUM(POPULATION) FROM CITY WHERE DISTRICT="California"
--Query the average population of all cities in CITY where District is California.
SELECT AVG(POPULATION) FROM CITY WHERE DISTRICT="California"
--Query the average population for all cities in CITY, rounded down to the nearest integer.
SELECT ROUND(AVG(POPULATION)) FROM CITY
--Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN
SELECT SUM(POPULATION) FROM CITY WHERE COUNTRYCODE="JPN"
--Query the difference between the maximum and minimum populations in CITY.
SELECT MAX(POPULATION)-MIN(POPULATION) FROM CITY
--Query the following two values from the STATION table:
--1.The sum of all values in LAT_N rounded to a scale of 2 decimal places.
--2.The sum of all values in LONG_W rounded to a scale of 2 decimal places.
SELECT ROUND(SUM(LAT_N),2),ROUND(SUM(LONG_W),2) FROM STATION
--Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.7880 AND  less than 137.2345. Truncate your answer to 4 decimal places.
SELECT ROUND(SUM(LAT_N),4) FROM STATION WHERE LAT_N > 38.7880 AND LAT_N < 137.2345
--Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than 137.2345. Truncate your answer to 4 decimal places.
SELECT ROUND(MAX(LAT_N),4) FROM STATION WHERE LAT_N < 137.2345

