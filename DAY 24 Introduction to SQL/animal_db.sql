-- animal_db iNTRO TO SQl 0:38:00


-- pgadmin will not run the same code twice, so if you get an orror in a line delete the line. it will not allow to run a line twice 

CREATE TABLE people(
	name VARCHAR(30) NOT NULL,
	has_pet BOOLEAN DEFAULT false,
	pet_type VARCHAR(10) NOT NULL,
	pet_name VARCHAR(50),
	pet_age INT
);

SELECT * FROM people;
-- above you can choose specific columny by selceting the columsn name ex "SELECT * FROM people;" is te oginal output, 'SELECT has_pet FROM people;'  will pull all value from has_pet

-- only use incle quotes '' never " " double quotes 
-- to run code below, highlogh code above and only run that "SELECT * FROM people;"
-- alwasy " , " after a list of date
-- alwasy " ; " after the end of a list
-- since sql run sequentily you must run the the list modfied list then the comand you wanted to run after,,, in this case the edites list below must be run fist the the top comand can be run....TOP COMMAND "SELECT * FROM people;
" 
INSERT INTO people(name, has_pet, pet_type, pet_name, pet_age)
VALUES ('Jacob', true,'dog','Misty',10),
		('Ahmed', true,'rock','Rockington',100),
		('Peter', true,'cat','Franklin',2),
		('DAVE', true,'dog','Queso',1);
		
SELECT pet_type, pet_name 
FROM people
WHERE pet_type = 'dog' 
AND pet_age < 5;

		
		
