DROP TABLE programming_languages;

CREATE TABLE programming_languages(
	id SERIAL PRIMARY KEY,
	language VARCHAR(20),
	rating int
);

INSERT INTO programming_languages(language,rating)
VALUES('HTML',95),
	('JS',99),
	('SQuery',98),
	('MySQl',70),
	('MySQl',70);

SELECT * From programming_languages

SELECT * From programming_languages
WHERE language ='MySQl';

-- IM GONNA DETE DUPLIACTED IN THIS CASE ITS " INDEX 5 AND "	('MySQl',70);" "

DELETE FROM programming_languages
WHERE id = 5;


-- add additional data into the table chart "programming_languages"

INSERT INTO programming_languages (language,rating)
VALUES ('Pythin',98),
		('C++', 73),
		('R', 95);
		
-- update date to another date ,,,, replace data with anoter data.... this case up date and replace " JS to JacaScript"

UPDATE programming_languages
SET language = 'JavaScript'
WHERE id = 2;
		
SELECT * From programming_languages;


-- update a rating int integer to anoter value so here update ' HTML value to 90'

UPDATE programming_languages
SET rating = 90 
WHERE id = 1;
	
SELECT * From programming_languages;

-- how to add an expert column with the boolean default of true

ALTER TABLE programming_languages
ADD COlUMN expert BOOLEAN default true;

SELECT * From programming_languages;





