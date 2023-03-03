-- 1. create a new database called owners_pets

-- 2. create the owners table

CREATE TABLE owners(
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	city VARCHAR(30),
	state CHAR(2)
);

-- 3. create the pets table (with a foreign key)
CREATE TABLE pets(
	id SERIAL PRIMARY KEY,
	species VARCHAR(30),
	full_name VARCHAR(30),
	age INT,
	owner_id INT REFERENCES owners (id)
);

SELECT * FROM owners;
SELECT * FROM pets;

-- 4. Add an email column to the owners table
ALTER TABLE owners
ADD COLUMN email VARCHAR(50) UNIQUE,
-- 5. change the data type of the last_name column in the
-- owners table to VARCHAR(50).
ALTER COLUMN last_name TYPE VARCHAR(50);









