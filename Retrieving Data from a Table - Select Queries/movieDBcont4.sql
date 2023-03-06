-- Ordering the results returned
/*
SELECT columnname1, columnname2 FROM tablename
ORDER BY columnname3;
*/

SELECT * FROM actors;

-- default is ASC
SELECT first_name, last_name, date_of_birth FROM actors
ORDER BY first_name;

SELECT first_name, last_name, date_of_birth FROM actors
ORDER BY first_name ASC;

SELECT first_name, last_name, date_of_birth FROM actors
ORDER BY first_name DESC;

SELECT actor_id, first_name, last_name, date_of_birth FROM actors
ORDER BY actor_id;

SELECT actor_id, first_name, last_name, date_of_birth FROM actors
ORDER BY date_of_birth;

SELECT actor_id, first_name, last_name, date_of_birth FROM actors
WHERE gender = 'F'
ORDER BY date_of_birth;

-- Limiting the number of records returned

/*
SELECT columnname1, columnname2 FROM tablename
LIMIT N;
*/

SELECT * FROM movie_revenues;

SELECT * FROM movie_revenues
ORDER BY domestic_takings
LIMIT 3;

-- OFFSET skips the first 3 rows of the table and limits to 5 results
SELECT * FROM movie_revenues
ORDER BY revenue_id
LIMIT 5 OFFSET 3;

-- Using Fetch
/*
SELECT column1 FROM table1
FETCH FIRST 1 ROW ONLY;
*/

SELECT movie_id, movie_name FROM movies
FETCH FIRST 1 ROW ONLY;

SELECT movie_id, movie_name FROM movies
OFFSET 8 ROWS
FETCH FIRST 10 ROW ONLY;

-- Distinct values
/*
SELECT DISTINCT columnname FROM tablename;
*/

SELECT DISTINCT movie_lang FROM movies
ORDER BY movie_lang;

SELECT DISTINCT movie_lang, age_certificate FROM movies
ORDER BY movie_lang;

-- will skip repeated values
SELECT DISTINCT * FROM movies
ORDER BY movie_lang;

-- Challenge
SELECT * FROM directors;

SELECT * FROM directors
WHERE nationality = 'American'
ORDER BY date_of_birth;


SELECT DISTINCT nationality FROM directors;

SELECT first_name, last_name, date_of_birth FROM actors
WHERE gender = 'F'
ORDER BY date_of_birth DESC
FETCH FIRST 10 ROWS ONLY;
-- or
SELECT first_name, last_name, date_of_birth FROM actors
WHERE gender = 'F'
ORDER BY date_of_birth DESC
LIMIT 10;



