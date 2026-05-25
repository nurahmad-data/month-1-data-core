--DAY 10
--SQLBolt
--Lesson 11: Queries with aggregates (Pt. 2)

--TASK 1: Find the number of Artists in the studio (without a HAVING clause)
SELECT role, COUNT(*) as Number_of_artists
FROM employees
WHERE role LIKE 'artist'
GROUP BY role;

--TASK 2: Find the number of Employees of each role in the studio 
SELECT role, COUNT(*) AS number_employees
FROM employees
GROUP BY role;

--TASK 3: Find the total number of years employed by all Engineers
SELECT role, SUM(years_employed) AS numbers_of_years
FROM employees
WHERE role LIKE 'engineer'
GROUP BY role;
--COMPLETED--