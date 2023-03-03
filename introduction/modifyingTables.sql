-- modifying tables and add a column

CREATE TABLE examples (
	example_id SERIAL PRIMARY KEY,
	first_name VARCHAR(30),
	last_name VARCHAR(30)
);
	
ALTER TABLE examples
ADD COLUMN email VARCHAR(50) UNIQUE;
	
SELECT * FROM examples;
	
ALTER TABLE examples
ADD COLUMN nationality VARCHAR(30),
ADD COLUMN age INT NOT NULL;

-- modifying multiple columns

ALTER TABLE examples
ALTER COLUMN last_name TYPE VARCHAR(50),
ALTER COLUMN email TYPE VARCHAR(80);


-- deleting tables from a data base

CREATE TABLE practice (
	id SERIAL PRIMARY KEY,
	product_name VARCHAR(50),
	product_price NUMERIC(4,2)
);

SELECT * FROM practice;

DROP TABLE practice;