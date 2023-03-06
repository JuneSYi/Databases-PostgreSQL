-- Using IN and NOT IN

/*
SELECT columnname1, columnname2 FROM tablename
WHERE columnname3 IN ('value1',value2');

SELECT columnname1, columnname2 FROM tablename
WHERE columnname3 NOT IN ('value1','value2');
*/

SELECT first_name, last_name FROM actors
WHERE first_name IN ('Bruce','John');

SELECT first_name, last_name FROM actors
WHERE first_name NOT IN ('Bruce','John','Peter');

SELECT actor_id, first_name, last_name FROM actors
WHERE actor_id IN (2,3,4,5,6,8);

SELECT actor_id, first_name, last_name FROM actors
WHERE actor_id NOT IN (2,3,4,5,6,8);


-- Using LIKE with % and _

/*
SELECT columnname FROM table
WHERE columnname LIKE '%pattern%';

SELECT columnname FROM table
WHERE columnname LIKE '_pattern_';
*/

-- this will look for any length string that starts with P
SELECT * FROM actors
WHERE first_name LIKE 'P%';

-- this will look for 3 character strings starting with Pe
SELECT * FROM actors
WHERE first_name LIKE 'Pe_';

-- any string that ends in r
SELECT * FROM actors
WHERE first_name LIKE '%r';

-- any string that has an 'r'
SELECT * FROM actors
WHERE first_name LIKE '%r%';

SELECT * FROM actors
WHERE first_name LIKE '__rl_';


-- selecting data where a column is between 2 values

/*
SELECT columnname1, columnname2 FROM tablename
WHERE columnname3 BETWEEN value1 AND value2;
*/

SELECT * FROM movies;

SELECT movie_name, release_date FROM movies
WHERE release_date BETWEEN '1995-01-01' AND '1999-12-31';

SELECT movie_name, movie_length FROM movies
WHERE movie_length BETWEEN 90 AND 120;

SELECT movie_name, movie_lang FROM movies
WHERE movie_lang BETWEEN 'E' AND 'P';


-- Challenge
SELECT * FROM movies;

SELECT movie_name, movie_lang FROM movies
WHERE movie_lang IN ('English','Spanish','Korean');

SELECT * FROM actors;

SELECT first_name, last_name FROM actors
WHERE last_name LIKE 'M%' 
AND date_of_birth BETWEEN '1940-01-01' AND '1969-12-31';

SELECT * FROM directors;

SELECT first_name, last_name FROM directors
WHERE nationality IN ('British','French','German')
AND date_of_birth BETWEEN '1950-01-01' AND '1980-12-31';






