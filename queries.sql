SELECT - extracts data from a database
UPDATE - updates data in a database
DELETE - deletes data from a database
INSERT INTO - inserts new data into a database
CREATE DATABASE - creates a new database
ALTER DATABASE - modifies a database
CREATE TABLE - creates a new table
ALTER TABLE - modifies a table
DROP TABLE - deletes a table
CREATE INDEX - creates an index (search key)
DROP INDEX - deletes an index

SQL keywords are NOT case sensitive: select is the same as SELECT

-- SELECT Syntax
-- To fetch all data in table
SELECT * FROM Customers;

SELECT column1, column2, ...
FROM table_name;


-- SELECT DISTINCT Syntax
SELECT DISTINCT column1, column2, ...
FROM table_name;


-- WHERE Syntax
SELECT column1, column2, ...
FROM table_name
WHERE condition;

-- AND Syntax
SELECT column1, column2, ...
FROM table_name
WHERE condition1 AND condition2 AND condition3 ...;

-- OR Syntax
SELECT column1, column2, ...
FROM table_name
WHERE condition1 OR condition2 OR condition3 ...;

-- NOT Syntax
SELECT column1, column2, ...
FROM table_name
WHERE NOT condition;

-- ORDER BY Syntax
SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... ASC|DESC;

-- INSERT INTO Syntax
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);

INSERT INTO table_name
VALUES (value1, value2, value3, ...);

-- IS NULL Syntax
SELECT column_names
FROM table_name
WHERE column_name IS NOT NULL;

-- UPDATE Syntax
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;

-- DELETE Syntax
DELETE FROM table_name WHERE condition;

-- SQL TOP, LIMIT, FETCH FIRST or ROWNUM Clause
-- SQL Server / MS Access Syntax:
SELECT TOP number|percent column_name(s)
FROM table_name
WHERE condition;

-- MySQL Syntax:
SELECT column_name(s)
FROM table_name
WHERE condition
LIMIT number;

-- Oracle 12 Syntax:
SELECT column_name(s)
FROM table_name
ORDER BY column_name(s)
FETCH FIRST number ROWS ONLY;

-- Older Oracle Syntax:
SELECT column_name(s)
FROM table_name
WHERE ROWNUM <= number;

-- Older Oracle Syntax (with ORDER BY):
SELECT *
FROM (SELECT column_name(s) FROM table_name ORDER BY column_name(s))
WHERE ROWNUM <= number;

