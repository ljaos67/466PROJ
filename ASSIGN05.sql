# NAME: LEONART JAOS
# Z-ID: Z1911688 
# ASSIGN05 DUE 2/19/2021
# PROF JON LEHUTA
# SECTION NO 0001

USE BabyName;
SHOW TABLES;
DESCRIBE BabyName;
SELECT DISTINCT name FROM BabyName WHERE year = '1998';
SELECT DISTINCT year FROM BabyName WHERE name = 'Leo' ORDER BY year asc;
(SELECT gender, name, count FROM BabyName WHERE count = (SELECT MAX(COUNT) FROM BabyName WHERE year = '1984' AND gender = 'M')) UNION (SELECT gender, name, count FROM BabyName WHERE count = (SELECT MAX(count) FROM BabyName WHERE year = '1984' and gender = 'F'));
SELECT place, COUNT(DISTINCT NAME) FROM BabyName GROUP BY place;
SELECT * FROM BabyName WHERE name LIKE '%Leo%' GROUP BY name, count, year ORDER BY name asc, count asc, year asc;
SELECT COUNT(name) FROM BabyName WHERE year = '1974';
SELECT COUNT(*) FROM BabyName;
(SELECT COUNT(name) FROM BabyName where gender = 'M' and year >= '1962') UNION (SELECT COUNT(name) FROM BabyName where gender = 'F' and year >= '1962');


