--DAY 11
--SQLBOLT
--Lesson 12: Order of execution of a Query

--TASK 1 Find the number of movies each director has directed
SELECT director, COUNT(title) AS total_movies
FROM movies
GROUP BY director;

--TASK 2 Find the total domestic and international sales that can be attributed to each director
SELECT director, SUM(international_sales + domestic_sales) AS total_sales
FROM movies
JOIN boxoffice
    ON movies.id = boxoffice.movie_id
GROUP BY director;
--COMPLETED--