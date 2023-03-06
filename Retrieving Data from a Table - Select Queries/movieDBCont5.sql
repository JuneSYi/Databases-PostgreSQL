-- Dealing with NULL values
/*
SELECT * FROM tablename
WHERE columnname IS NULL;

SELECT * FROM tablename
WHERE columnname IS NOT NULL;
*/

SELECT * FROM actors;

SELECT * FROM actors
WHERE date_of_birth IS NULL;

SELECT * FROM actors
WHERE date_of_birth IS NOT NULL;

SELECT * FROM movie_revenues
WHERE domestic_takings IS NOT NULL
ORDER BY domestic_takings DESC;

-- Setting a column name alias
/*
SELECT columnname AS new_columnname FROM tablename;
*/

SELECT last_name FROM directors;

SELECT last_name AS surname FROM directors;

SELECT * FROM directors;

SELECT last_name AS surname FROM directors
WHERE last_name = 'Anderson';

SELECT last_name AS surname FROM directors
WHERE last_name LIKE 'A%'
ORDER BY surname;
-- can do ORDER BY last_name as well
/*
the above works because it runs the WHERE clause first
before setting the column name alias (surname)
then it selects from the directors table
then it selects the column last_name as the alias (surname)
then the final part is ORDER BY, where surname is already set
*/

-- Using concatenate
/*
SELECT 'string1' || 'string2' AS new_string;

SELECT CONCAT(column1, column2) AS new_column FROM tablename;

SELECT CONCAT_WS(' ', column1, column2) AS new_column FROM tablename;
*/

SELECT 'concat' || 'together' AS new_string;

SELECT 'concat' || ' ' || 'together' AS new_string;

SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM actors;

SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM actors;

-- Challenge
SELECT * FROM movies;
SELECT * FROM movie_revenues;

SELECT * FROM movie_revenues
WHERE international_takings IS NOT NULL
ORDER BY international_takings DESC
LIMIT 3;

SELECT CONCAT(first_name, ' ', last_name) AS full_name from directors;

SELECT * FROM actors
WHERE first_name IS NULL
OR date_of_birth IS NULL;





