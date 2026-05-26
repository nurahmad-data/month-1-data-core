--DAY 14
--SQLBOLT

--Lesson 17: Altering tables
--TASK 1: Add a column named Aspect_ratio with a FLOAT data type to store the aspect-ratio each movie was released in
ALTER TABLE movies
ADD aspect_ratio FLOAT;
--TASK 2: Add another column named Language with a TEXT data type to store the language that the movie was released in. Ensure that the default for this language is English.
ALTER TABLE movies
ADD language TEXT DEFAULT 'English';

--Lesson 18: Dropping tables
--TASK 1: We've sadly reached the end of our lessons, lets clean up by removing the Movies table
DROP TABLE movies;
--TASK 2: And drop the BoxOffice table as well
DROP TABLE boxoffice;
--COMPLETED--