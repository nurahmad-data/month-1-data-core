--DAY 7: SYNTAX REVIEW

--The Ultimate SELECT
-- Used to pull specific columns, filter them, and sort them.
SELECT column_1, column_2
FROM my_table
WHERE column_1 BETWEEN 27 AND 35 AND column_2 = 'Active'
ORDER BY column_1 ASC
LIMIT 7 OFFSET 2;

--The Text Filter
-- Used to find patterns in text strings.
SELECT name
FROM users
WHERE name LIKE '%ohn%';

--The INNER JOIN
-- Used to combine rows from two tables where they both have a match.
SELECT table_A.name, table_B.status
FROM table_A
INNER JOIN table_B
    ON table_A.id = table_B.id;

-- 4. The OUTER JOIN (LEFT JOIN)
-- Keeps everything from the left table, even if there is no match on the right.
SELECT table_left.name, table_right.purchase_status
FROM table_left
LEFT JOIN table_right
    ON table_left.id = table_right.purchase_id;

-- 5. The NULL Check
-- Used to filter out rows that are completely blank.
SELECT column_1
FROM my_table
WHERE column_1 IS NOT NULL;
--COMPLETED--