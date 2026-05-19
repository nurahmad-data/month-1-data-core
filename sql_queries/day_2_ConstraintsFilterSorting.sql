--DAY 2 SQLBOLT
--LESSON 3: QUERIES WITH CONSTRAINTS PT.2--
SELECT title FROM movies
    WHERE title LIKE "%Oy%";
SELECT title,director FROM movies
    WHERE director LIKE "%ohn%";
SELECT title,director FROM movies
    WHERE director NOT LIKE "%ohn%";
SELECT title FROM movies
    WHERE title LIKE "%WALL%";
--==================================--
--LESSON 4: FILTERING AND SORTING QUERY RESULTS
SELECT DISTINCT director FROM movies
    ORDER BY director ASC;
SELECT title,year FROM movies
    ORDER BY year DESC
    LIMIT 4;
SELECT title FROM movies
    ORDER BY title ASC
    LIMIT 5;
SELECT title FROM movies
    ORDER BY title ASC
    LIMIT 5 OFFSET 5;
    --DAY 2 COMPLETED--