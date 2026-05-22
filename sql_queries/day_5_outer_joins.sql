--SQLBOLT
--DAY 5: OUTER JOINs
--TASK: 1 Find the list of all buildings that have employees
SELECT DISTINCT building FROM employees;
--TASK: 2 Find the list of all buildings that have employees
SELECT building_name, capacity FROM buildings;
--TASK: 3 List all buildings and the distinct employee roles in each building (including empty buildings)
SELECT DISTINCT building_name, role
FROM buildings
LEFT JOIN employees
ON buildings.building_name = employees.building;
--COMPLETE--