--DAY 13
--SQLBOLT
--Lesson 15: Deleting rows
--TASK 1: This database is getting too big, lets remove all movies that were released before 2005. 
DELETE FROM movies 
WHERE year < 2005;
--TASK 2: Andrew Stanton has also left the studio, so please remove all movies directed by him. 
DELETE FROM movies
WHERE director LIKE 'Andrew Stanton';

--Lesson 16: Creating tables
--TASK 1 Create a new table named Database with the following columns:
---Name A string (text) describing the name of the database
---Version A number (floating point) of the latest version of this database
---Download_count An integer count of the number of times this database was downloaded
---This table has no constraints.
CREATE TABLE database (name VARCHAR(25), version FLOAT, download_count INTEGER);