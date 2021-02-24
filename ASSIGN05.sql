-- NAME: LEONART JAOS
-- Z-ID: Z1911688 
-- ASSIGN05 DUE 2/19/2021
--PROF JON LEHUTA
-- SECTION NO 0001

USE BabyName; -- 1: Select the BabyName database
SHOW TABLES; --  2: Show all of the tables in the database
DESCRIBE BabyName; --3:  Shows all of the columns and their types for each table in the data base
SELECT DISTINCT name FROM BabyName WHERE year = '1998' LIMIT 50; -- 4: Shows all names from 1998 only once
SELECT DISTINCT year FROM BabyName WHERE name = 'Leo' ORDER BY year asc LIMIT 50; --5: Shows yrs where Leo appears
(SELECT gender, name, count FROM BabyName WHERE count = (SELECT MAX(COUNT) FROM BabyName WHERE year = '1984' AND gender = 'M')) UNION (SELECT gender, name, count FROM BabyName WHERE count = (SELECT MAX(count) FROM BabyName WHERE year = '1984' and gender = 'F')) LIMIT 50; -- 6: Displays most popular male and female names of 1984
SELECT place, COUNT(DISTINCT NAME) FROM BabyName GROUP BY place LIMIT 50; --7: Lists number of unique names by place 
SELECT * FROM BabyName WHERE name LIKE '%Leo%' GROUP BY name, count, year ORDER BY name asc, count asc, year asc LIMIT 50; --8: Shows information about names like Leo and sorts by alphabetical, count, then year
SELECT COUNT(name) FROM BabyName WHERE year = '1974' LIMIT 50 ; -- 9: Shows how many names there were in 1974 total
SELECT COUNT(*) FROM BabyName LIMIT 50; -- 10: Shows how many rows there are in the table
(SELECT COUNT(name) FROM BabyName where gender = 'M' and year >= '1962') UNION (SELECT COUNT(name) FROM BabyName where gender = 'F' and year >= '1962') LIMIT 50; -- 11: Shows how many names are in the table for each sex from 1962


