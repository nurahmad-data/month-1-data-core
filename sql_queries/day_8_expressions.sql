--SQLBOLT
--Lesson 9: Queries with expressions

--TASK 1 List all movies and their combined sales in millions of dollars 
SELECT title, (domestic_sales + international_sales) / 1000000 AS gross_sales_millions
FROM movies
    JOIN boxoffice
        ON movies.id = boxoffice.movie_id;

--TASK 2 List all movies and their ratings in percent 
SELECT title, rating * 10 AS rating_percent
FROM movies
    JOIN boxoffice 
        ON movies.id = boxoffice.movie_id;

--TASK 3 List all movies that were released on even number years
SELECT title, year
FROM movies
WHERE year % 2 = 0;
--COMPLETED--