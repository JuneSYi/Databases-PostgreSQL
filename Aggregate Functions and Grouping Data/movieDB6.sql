-- Aggregate Functions : COUNT

/*
SELECT COUNT(columnname) FROM tablename;
*/

SELECT * FROM movie_revenues;

SELECT COUNT(*) FROM movie_revenues;

SELECT COUNT(international_takings) FROM movie_revenues;

SELECT COUNT(*) FROM movies
WHERE movie_lang = 'English';

-- Aggregate Functions : SUM
/*
SELECT SUM(columnname) FROM tablename;
*/

SELECT SUM(domestic_takings) FROM movie_revenues
WHERE domestic_takings > 100.0;

SELECT SUM(movie_length) FROM movies
WHERE movie_lang = 'Chinese';

-- Aggregate Functios: MIN and MAX
/*
SELECT MAX(columnname) FROM tablename;
SELECT MAX(columnname) FROM tablename;
*/

SELECT MAX(movie_length) FROM movies;

SELECT MIN(movie_length) FROM movies;

SELECT MIN(MOVIE_LENGTH) from MOVIES
where MOVIE_LANG = 'Japanese';

SELECT MAX(release_date) FROM movies;

SELECT min(release_date) FROM movies;

-- returns alphabetically, the highest value 'Way of the Dragon'
SELECT MAX(movie_name) FROM movies;
-- returns 'A Clockwork Orange'
SELECT MIN(movie_name) FROM movies;

-- Challenge
SELECT COUNT(*) FROM actors
WHERE date_of_birth > '1970-01-01';

SELECT * FROM movie_revenues;

SELECT MAX(domestic_takings) FROM movie_revenues;
SELECT MIN(domestic_takings) FROM movie_revenues;

SELECT * FROM MOVIES;

SELECT SUM(MOVIE_LENGTH) FROM MOVIES
WHERE AGE_CERTIFICATE = '15';

SELECT COUNT(*) FROM DIRECTORS
WHERE NATIONALITY = 'Japanese';

select avg(movie_length) from movies
where movie_lang = 'Chinese';







