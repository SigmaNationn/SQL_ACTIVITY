-- Drop table if exists
-- ALWASY REFRESH TABLE BEOFE YOU IMPORT 
-- do forget to import csv


DROP TABLE IF EXISTS road_accidents;

DROP TABLE IF EXISTS accidents_by_state;

-- Create new tables to import data
CREATE TABLE road_accidents (
	_id	INT PRIMARY KEY,
	Year INT,
	Registered_Vehicles	INT,
	Population INT,
	Road_Crashes INT,
	Road_Deaths INT,
	Serious_Injury INT,
	Slight_Injury INT,
	Index_per_10000_Vehicles DEC,
	Index_per_100000_Population DEC,	
	Index_per_billion_VKT DEC
);

CREATE TABLE accidents_by_state (
	Year INT,
	MYS_State VARCHAR,
	Road_Crashes INT,
	Road_Deaths INT,
	Serious_Injury INT,
	Slight_Injury INT
);

-- Import data from mys_road_accidents.csv
-- View the table to ensure all data has been imported correctly
SELECT * FROM road_accidents;

-- Import data from mys_accidents_by_state.csv
-- View the table to ensure all data has been imported correctly
SELECT * FROM accidents_by_state;


-- find row with missing data 

SELECT * FROM road_accidents WHERE road_crashes = 0;

-- note colums with missing data; road_crashes, seriosu_injury, slight_injury
-- note year = 2017 
-- note road_deaths = 6740 

DELETE FROM accidents_by_state 
WHERE year != 2017;

-- calculate the missing data and rename colums 

SElECT SUM(road_crashes) AS road_crashes,
	SUM(serious_injury) AS serious_injury,
	SUM(slight_injury) AS slight_injury,
	SUM(road_deaths) AS road_deaths
FROM accidents_by_state;

-- udate missing data

UPDATE road_accidents
SET road_crashes = 533875,
	serious_injury = 3310,
	slight_injury = 6539
WHERE YEAR = 2017 

-- view updated tabel 
SELECT * FROM road_accidents;

-- delete all rows 

DELETE FROM accidents_by_state;

-- remerb to reimport from mys_accidnets_by_state.csv 

SElECT SUM(road_crashes) AS road_crashes,
	SUM(road_deaths) AS road_deaths,
	SUM(serious_injury) AS serious_injury,
	SUM(slight_injury) AS slight_injury
FROM accidents_by_state
WHERE year = 2018;


-- insert new row 

INSERT INTO 
road_accidents(_id, year, road_crashes, road_deaths, serious_injury, slight_injury)
VALUES (22,2018,548598,6384,2964,5377);

-- view tabel 
SELECT * FROM road_accidents;
