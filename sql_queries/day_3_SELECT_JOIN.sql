--DAY 3: SQLBOLT
--LESSON 5: SIMPLE SELECT QUERIES--
SELECT city,country,population FROM north_american_cities
    WHERE country LIKE "%canada%";
SELECT country,latitude,city FROM north_american_cities
    WHERE country LIKE "%united states%"
    ORDER BY latitude DESC;
SELECT longitude,city FROM north_american_cities
    ORDER BY longitude ASC
    LIMIT 6;
SELECT country,city,population FROM north_american_cities
    WHERE country LIKE "%mexico%"
    ORDER BY population DESC
    LIMIT 2;
SELECT city, population FROM north_american_cities
    WHERE country LIKE "%united states%"
    ORDER BY population DESC
    LIMIT 2 OFFSET 2;
--===================================================--
--LESSON 6: MULTI-TABLE QUERIES WITH JOINS--
SELECT title,domestic_sales,international_sales 
    FROM movies
    INNER JOIN boxoffice
    ON movies.id = boxoffice.movie_id;
SELECT title,international_sales,domestic_sales
    FROM movies
    INNER JOIN boxoffice
    ON movies.id = boxoffice.movie_id
    WHERE international_sales > domestic_sales
    ORDER BY title;
SELECT title, rating
    FROM movies
    INNER JOIN boxoffice
    ON movies.id = boxoffice.movie_id
    ORDER BY rating DESC;
    --COMPLETED--