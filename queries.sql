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

-- The SQL MIN() and MAX() Functions
-- MIN() Syntax
SELECT MIN(column_name)
FROM table_name
WHERE condition;

-- MAX() Syntax
SELECT MAX(column_name)
FROM table_name
WHERE condition;

-- COUNT() Syntax
SELECT COUNT(column_name)
FROM table_name
WHERE condition;
The AVG() function returns the average value of a numeric column.

-- AVG() Syntax
SELECT AVG(column_name)
FROM table_name
WHERE condition;
The SUM() function returns the total sum of a numeric column.

-- SUM() Syntax
SELECT SUM(column_name)
FROM table_name
WHERE condition;

-- LIKE Syntax
SELECT column1, column2, ...
FROM table_name
WHERE columnN LIKE pattern;


-- LIKE operators with '%' and '_'
LIKE Operator	                |     Description
WHERE CustomerName LIKE 'a%'	| Finds any values that start with "a"
WHERE CustomerName LIKE '%a'	| Finds any values that end with "a"
WHERE CustomerName LIKE '%or%'	| Finds any values that have "or" in any position
WHERE CustomerName LIKE '_r%'	| Finds any values that have "r" in the second position
WHERE CustomerName LIKE 'a_%'	| Finds any values that start with "a" and are at least 2 characters in length
WHERE CustomerName LIKE 'a__%'	| Finds any values that start with "a" and are at least 3 characters in length
WHERE ContactName LIKE 'a%o'	| Finds any values that start with "a" and ends with "o"

-- Wildcard Characters in SQL Server
Symbol                    Description	                      Example
%	           Represents zero or more characters	    bl% finds bl, black, blue, and blob
_	           Represents a single character	        h_t finds hot, hat, and hit
[]	           Represents any single character          within the brackets	h[oa]t finds hot and hat, but not hit
^	           Represents any character not in          the brackets	h[^oa]t finds hit, but not hot and hat
-	           Represents any single character          within the specified range	c[a-b]t finds cat and cbt


-- LIKE operators with '%' and '_' wildcards:
LIKE Operator	                |       Description
WHERE CustomerName LIKE 'a%'	| Finds any values that starts with "a"
WHERE CustomerName LIKE '%a'	| Finds any values that ends with "a"
WHERE CustomerName LIKE '%or%'	| Finds any values that have "or" in any position
WHERE CustomerName LIKE '_r%'	| Finds any values that have "r" in the second position
WHERE CustomerName LIKE 'a__%'	| Finds any values that starts with "a" and are at least 3 characters in length
WHERE ContactName LIKE 'a%o'	| Finds any values that starts with "a" and ends with "o"


-- IN Syntax
SELECT column_name(s)
FROM table_name
WHERE column_name IN (value1, value2, ...);
-- or:
SELECT column_name(s)
FROM table_name
WHERE column_name IN (SELECT STATEMENT);

-- BETWEEN Syntax
SELECT column_name(s)
FROM table_name
WHERE column_name BETWEEN value1 AND value2;