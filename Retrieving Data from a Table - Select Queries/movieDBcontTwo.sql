/*
after all data has been added from movieDBcont.sql

*/

SELECT * FROM directors;

SELECT first_name FROM directors;

SELECT first_name, last_name FROM directors;

SELECT first_name, last_name, nationality FROM directors;


-- Retrieving data with a where clause

/*
SELECT columnname FROM tablename
WHERE columnname = 'value'l
*/

SELECT * FROM movies
WHERE age_certificate = '15';

SELECT * FROM movies
WHERE age_certificate = '15'
AND movie_lang = 'Chinese';

SELECT * FROM movies
WHERE age_certificate = '15'
OR movie_lang = 'Chinese';

SELECT * from MOVIES
WHERE movie_lang = 'English'
AND age_certificate = '15'
AND director_id = 27;


-- Using logical operators (>, >=, <, <=)

SELECT movie_name, movie_length FROM movies
WHERE movie_length > 120;

SELECT movie_name, movie_length FROM movies
WHERE movie_length >= 120;

SELECT movie_name, movie_length FROM movies
WHERE movie_length < 120;

SELECT * FROM movies
WHERE release_date > '1999-12-31';

SELECT * FROM movies
WHERE movie_lang > 'English';


-- Challenge
SELECT * FROM movies;
SELECT * FROM directors;
SELECT * FROM actors;
SELECT movie_name,release_date FROM movies;

SELECT first_name,last_name FROM directors
where nationality = 'American';

SELECT * FROM actors
WHERE gender = 'M'
AND date_of_birth > 1970-01-01;

SELECT movie_name FROM movies
WHERE movie_length > 90
AND movie_lang = 'English';