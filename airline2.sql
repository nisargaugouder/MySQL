drop database airline;
CREATE DATABASE airline;
USE airline;

CREATE TABLE airlines_info (
    airline_id INT PRIMARY KEY,
    airline_name VARCHAR(100),
    OG VARCHAR(3),
    years INT,
    size INT
);

INSERT INTO airlines_info VALUES
(1, 'Sky', 'USA', 1985, 180),
(2, 'Global', 'CAN', 1992, 220),
(3, 'British', 'GBR', 1978, 130),
(4, 'Maple', 'CAN', 2001, 95),
(5, 'DownUnder', 'USA', 1994, 150),
(6, 'Eagle', 'USA', 1987, 110),
(7, 'Indigo', 'IND', 2005, 75),
(8, 'Breeze', 'USA', 2010, 85),
(9, 'Nippon', 'JPN', 1999, 140),
(10, 'French', 'FRA', 2002, 160),
(11, 'Italian', 'ITA', 1989, 145),
(12, 'Spanish', 'ESP', 1993, 170),
(13, 'Aztec', 'USA', 2004, 60),
(14, 'RedStar', 'RUS', 1991, 80),
(15, 'Dragon', 'CHN', 2006, 90),
(16, 'Nordic', 'SWE', 1990, 100),
(17, 'Viking', 'NOR', 1995, 115),
(18, 'Tulip', 'USA', 1997, 125),
(19, 'Belgian', 'BEL', 2003, 135),
(20, 'Argentinian', 'ARG', 2005, 140);

ALTER TABLE airlines_info
ADD COLUMN worth VARCHAR(100),
ADD COLUMN website VARCHAR(100),
ADD COLUMN owners VARCHAR(100);

ALTER TABLE airlines_info
RENAME COLUMN size TO number_of_aircraft,
RENAME COLUMN years TO year_established,
RENAME COLUMN OG TO country_code;

ALTER TABLE airlines_info
MODIFY COLUMN number_of_aircraft BIGINT,
MODIFY COLUMN year_established SMALLINT,
MODIFY COLUMN country_code CHAR(3);

SELECT * FROM airlines_info;
update airlines_info set country_code ="IND" where airline_id=1;

delete from airlines_info where airline_id=5;

select * from airlines_info where airline_id=1 or airline_id=2 or airline_id=3;
select * from airlines_info where airline_id in(1,2,3); -- when 1 colum more row
select * from airlines_info where airline_id not in(4,3);
select * from airlines_info where airline_id between 4 and 6;
select * from airlines_info where airline_id not between 4 and 6;

update airlines_info set country_code='IND' where year_established in(1992,2010);
delete from airlines_info where airline_name not in('sky','global');
select * from airlines_info where airline_name between 'i' and 's';

update airlines_info set 
