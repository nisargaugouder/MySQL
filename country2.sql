drop database country;
CREATE DATABASE IF NOT EXISTS country;
USE country;

CREATE TABLE country_info (
    id INT PRIMARY KEY,
    country_name VARCHAR(100),
    continent VARCHAR(50),
    population INT,
    area FLOAT
);

INSERT INTO country_info VALUES
(1, 'United States', 'N America', 3310000, 9833517),
(2, 'Canada', 'N America', 377454, 9984670),
(3, 'United Kingdom', 'Europe', 678011, 243610),
(4, 'Australia', 'Oceania', 254884, 7692024),
(5, 'Germany', 'Europe', 8378942, 357022),
(6, 'India', 'Asia', 1380098385, 3287263),
(7, 'Brazil', 'South America', 21259417, 8515767),
(8, 'Japan', 'Asia', 12647461, 377975),
(9, 'France', 'Europe', 6527511, 551695),
(10, 'Italy', 'Europe', 6024439, 301340),
(11, 'Spain', 'Europe', 4675478, 505992),
(12, 'Mexico', 'N America', 12932753, 1964375),
(13, 'Russia', 'Asia', 14591025, 17098242),
(14, 'China', 'Asia', 143323776, 9596961),
(15, 'Sweden', 'Asia', 1009265, 450295),
(16, 'Norway', 'Europe', 542241, 323802),
(17, 'Netherlands', 'Europe', 17134872, 41543),
(18, 'Belgium', 'Europe', 11589623, 30528),
(19, 'Argentina', 'South America', 45195777, 2780400),
(20, 'South Africa', 'Africa', 59308690, 1219090);

ALTER TABLE country_info
ADD COLUMN currency VARCHAR(50),
ADD COLUMN official_language VARCHAR(50),
ADD COLUMN gdp FLOAT;

ALTER TABLE country_info
RENAME COLUMN area TO total_area,
RENAME COLUMN continent TO region,
RENAME COLUMN population TO total_population;

ALTER TABLE country_info
MODIFY COLUMN total_population BIGINT,
MODIFY COLUMN total_area DECIMAL(10, 2),
MODIFY COLUMN gdp DECIMAL(15, 2);

select * from country_info;