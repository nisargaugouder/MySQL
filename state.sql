CREATE DATABASE IF NOT EXISTS state;
USE state;

CREATE TABLE state_info (
    state_id INT PRIMARY KEY,
    state_name VARCHAR(100),
    country_id INT,
    capital_city VARCHAR(100),
    population INT
);

INSERT INTO state_info (state_id, state_name, country_id, capital_city, population) VALUES
(1, 'Maharashtra', 6, 'Mumbai', 123143),
(2, 'Uttar Pradesh', 6, 'Lucknow', 1992341),
(3, 'Bihar', 6, 'Patna', 104452),
(4, 'West Bengal', 6, 'Kolkata', 976115),
(5, 'Tamil Nadu', 6, 'Chennai', 721430),
(6, 'Rajasthan', 6, 'Jaipur', 6854837),
(7, 'Karnataka', 6, 'Bengaluru', 610297),
(8, 'Gujarat', 6, 'Gandhinagar', 604392),
(9, 'Andhra Pradesh', 6, 'Amaravati', 49103),
(10, 'Telangana', 6, 'Hyderabad', 350090),
(11, 'Kerala', 6, 'Thiruvananthapuram', 334061),
(12, 'Odisha', 6, 'Bhubaneswar', 419218),
(13, 'Punjab', 6, 'Chandigarh', 277338),
(14, 'Haryana', 6, 'Chandigarh', 253581),
(15, 'Chhattisgarh', 6, 'Raipur', 255196),
(16, 'Jharkhand', 6, 'Ranchi', 3298834),
(17, 'Himachal Pradesh', 6, 'Shimla', 68602),
(18, 'Uttarakhand', 6, 'Dehradun', 186292),
(19, 'Tripura', 6, 'Agartala', 36732),
(20, 'Sikkim', 6, 'Gangtok', 610577);

ALTER TABLE state_info
ADD COLUMN area FLOAT,
ADD COLUMN timezone VARCHAR(50),
ADD COLUMN cm VARCHAR(100);

ALTER TABLE state_info
RENAME COLUMN capital_city TO capital,
RENAME COLUMN population TO state_population,
RENAME COLUMN country_id TO country_reference_id;

ALTER TABLE state_info
MODIFY COLUMN state_population BIGINT,
MODIFY COLUMN area DECIMAL(10, 2),
MODIFY COLUMN timezone VARCHAR(50);

select * from state_info;