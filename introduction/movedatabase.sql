-- Database: movie_data

-- DROP DATABASE IF EXISTS movie_data;

CREATE DATABASE movie_data
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
	
	
-- Create Director's table

CREATE TABLE directors (

	director_id SERIAL PRIMARY KEY,
	-- SERIAL = Auto incrementing whole numbers, 
	-- commonly used with ID #s
	first_name VARCHAR(30), -- can hold up to 30 char string
	last_name VARCHAR(30) NOT NULL,
	date_of_birth DATE,
	nationality VARCHAR(20)
);

SELECT * FROM directors;

-- Actors table

CREATE TABLE ACTORS (

	actor_id SERIAL PRIMARY KEY,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	gender CHAR(1),
	date_of_birth DATE
);

SELECT * FROM actors;