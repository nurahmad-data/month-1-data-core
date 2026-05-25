--DAY 9
--SQLBOLT
--LESSON 10: Queries with aggregates (Pt.1)

--TASK 1: Find the longest time that an employee has been at the studio
SELECT name, MAX(years_employed)
FROM employees;

--TASK 2: For each role, find the average number of years employed by employees in that role
SELECT role, AVG(years_employed) AS avg_years_employed
FROM employees
GROUP BY role;

--TASK 3: Find the total number of employee years worked in each building
SELECT building, SUM(years_employed)
FROM employees
GROUP BY building;
--COMPLETED--