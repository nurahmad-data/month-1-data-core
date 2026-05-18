-- SQLBolt LESSON 1: BASIC SELECT QUERIES
SELECT title FROM movies;
SELECT director FROM movies;
SELECT title, director FROM movies;
SELECT title, year FROM movies;
SELECT * FROM movies;

-- LESSON 2: CONSTRAINTS (WHERE CLAUSE)
SELECT id, title FROM movies
    WHERE id = 6;
SELECT year, title FROM movies
    WHERE year BETWEEN 2000 AND 2010;
SELECT year, title FROM movies
    WHERE year NOT BETWEEN 2000 AND 2010;
SELECT id, year, title FROM movies
    WHERE id < 6;
