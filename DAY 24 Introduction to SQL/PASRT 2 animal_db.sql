SELECT * From people;

-- rememerb SQL must be run in sequence 
-- this will delete all duplicated colums. or data
-- how to delete a column 1:02:27
DELETE FROM people
WHERE name = 'Jacob';

DROP TABLE people;

CREATE TABLE people (
	id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
	has_pet BOOLEAN DEFAULT false,
	pet_type VARCHAR(10) NOT NULL,
	pet_name VARCHAR(30),
	pet_age INT
);

INSERT INTO people(name, has_pet, pet_type, pet_name, pet_age)
VALUES ('Jacob', true,'dog','Misty',10),
		('Ahmed', true,'rock','Rockington',100),
		('Ahmed', true,'rock','Rockington',100),
		('Peter', true,'cat','Franklin',2),
		('DAVE', true,'dog','Queso',1),
		('DAVE', true,'dog','PRINGLES',7);
		
		
-- how to delete and id coulm. problem will be it will skip the numebrm i will have to reset the "id" or change the index
--
DELETE FROM people
WHERE id = 3;
		

