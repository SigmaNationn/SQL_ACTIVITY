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
WHERE language ='MySQl';


-- I LEFT OFF AT 1:27:00

	