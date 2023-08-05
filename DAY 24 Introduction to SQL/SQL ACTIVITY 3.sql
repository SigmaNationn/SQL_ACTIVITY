-- crate a tabel 

-- all sql code must be run sequentilly. meaning if you wite "SELECT state From cities;" you must run "CREATE TABLE cities"
-- and INSERT INTO cities (city,state, population) before you can run  "SELECT state From cities; "

CREATE TABLE cities(
	city VARCHAR(30) NOT NULL,
	state VARCHAR(30) NOT NULL,
	population INT
);


-- data to be inserted  

INSERT INTO cities (city,state, population)
VALUES ('Almeda','california',79177),
	('Mesa','Arizona',496401),
	('Borena','Texas',16056),
	('Anaheim','california',352497),
	('Tuscon','Arizona',535677),
	('Garland','Texas',238002);
	
-- code below runs all columsn 
SELECT * from cities;

-- code below runs only 'city' columsn 

SELECT city From cities;


-- creat query to view cities in Arizon

SELECT city, STATE 
FROM cities
WHERE state = 'Arizona'


-- create queay to view cities and state 
-- with pouplation less than 100,000
SELECT *
FROM cities
WHERE population < 100000;



-- create queay to view cities and state 
-- with pouplation less than 100,000
-- in the city of californa only
SELECT *
FROM cities
WHERE population < 100000
AND state = 'california';