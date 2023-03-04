-- continuing from /introduction/modifyingTables.sql

SELECT * FROM examples;

/*
INSERT INTO tablename (columnname1, columnname2, columnname3)
VALUES ('value1','value2','value3');
*/

INSERT INTO examples (first_name, last_name, email, nationality, age)
VALUES ('David','Mitchell','dmitch@gmail.com','GBR',43);

INSERT INTO examples (first_name, last_name, email, nationality, age)
VALUES ('Emily','Watson','ewatson@gmail.com','USA',29),
('Theo','Scott','tscott@gmail.com','AUS',33),
('Emily','Smith','esmith@gmail.com','GBR',29),
('Jim','Burr','jburr@gmail.com','USA',54);

-- UPDATE DATA IN A TABLE

/*
UPDATE tablename
SET columnname = 'newvalue'
WHERE columnname = 'value';
*/

UPDATE examples
SET email = 'davidmitchell@gmail.com'
WHERE example_id = 1;

SELECT * FROM examples;

-- replacing all columns with a specified data
UPDATE examples
SET nationality = 'CAN'
WHERE nationality = 'USA';

-- updating multiple columns
UPDATE examples
SET first_name = 'James', age = 55
where example_id = 5;

-- Deleting data from a table
/*
DELETE FROM tablename
WHERE columnname = 'value';
*/

DELETE FROM examples
WHERE example_id = 2;

-- Deleting all specific nationality or other word
DELETE FROM examples
WHERE nationality = 'GBR';

SELECT * FROM examples;

-- Deleting all data

DELETE FROM examples;



