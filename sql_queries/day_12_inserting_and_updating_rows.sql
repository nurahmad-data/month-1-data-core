--DAY 12
--SQLBOLT
--Lesson 13: Inserting rows
--TASK 1: Add the studio's new production, Toy Story 4 to the list of movies (you can use any director)
INSERT INTO movies (id, title, director, year, length_minutes)
VALUES (4, 'Toy Story 4', 'John Lasseter', 2025, 96)
--TASK 2: Toy Story 4 has been released to critical acclaim! It had a rating of 8.7, and made 340 million domestically and 270 million internationally. Add the record to the BoxOffice table.
INSERT INTO boxoffice (movie_id, rating, domestic_sales, international_sales)
VALUES (4, 8.7, 340000000, 270000000);

--Lesson 14: Updating rows
--TASK 1: The director for A Bug's Life is incorrect, it was actually directed by John Lasseter
UPDATE movies
SET director = 'John Lasseter'
WHERE id = 2;
--TASK 2: The year that Toy Story 2 was released is incorrect, it was actually released in 1999
UPDATE movies
SET year = 1999
WHERE id = 3;
--TASK 3: Both the title and director for Toy Story 8 is incorrect! The title should be "Toy Story 3" and it was directed by Lee Unkrich
UPDATE movies
SET title = 'Toy Story 3',director = 'Lee Unkrich'
WHERE id = 11;
--COMPLETED--