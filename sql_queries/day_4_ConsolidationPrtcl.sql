--DAY 4: SQL CONSOLIDATION PROTOCOL
--TABLE students
CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    name TEXT,
    major TEXT
);
--TABLE grades
CREATE TABLE grades (
    id INTEGER PRIMARY KEY,
    student_id INTEGER,
    score INTEGER
);

--DML TABLE students
INSERT INTO students (id, name, major)
VALUES
    (1, 'Taro', 'Data Science'),
    (2, 'Kenji', 'Engineering'),
    (3, 'Yuki', 'Mathematics');

--DML TABLE grades
INSERT INTO grades (id, student_id, score)
VALUES
    (1, 1, 95),
    (2, 2, 82),
    (3, 3, 78);

--THE DATA EXTRACTION (CORE TEST)
--QUERY A: An INNER JOIN that returns the name of the student and their score.
SELECT name, score FROM students
    INNER JOIN grades
    ON students.id = grades.student_id;

--QUERY B: An INNER JOIN that returns the name of the student and their score, but uses a WHERE clause to only show scores greater than 80.
SELECT name, score FROM students
    INNER JOIN grades
    ON students.id = grades.student_id
    WHERE score > 80;

--QUERY C: An INNER JOIN that returns the name of the student and their score, ordered from highest score to lowest.
SELECT name, score FROM students
    INNER JOIN grades
    ON students.id = grades.student_id
    ORDER BY score DESC;