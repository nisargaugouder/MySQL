DROP DATABASE IF EXISTS state;
CREATE DATABASE IF NOT EXISTS state;
USE state;

CREATE TABLE state_info (
    id INT,
    state_name VARCHAR(80),
    country_id INT,
    capital_city VARCHAR(30),
    population BIGINT
);


ALTER TABLE state_info
ADD area FLOAT,
ADD timezone VARCHAR(50),
ADD cm VARCHAR(100);


ALTER TABLE state_info
RENAME COLUMN state_name TO name;

ALTER TABLE state_info
RENAME COLUMN country_id TO country_reference_id;

ALTER TABLE state_info
RENAME COLUMN capital_city TO capital;


ALTER TABLE state_info
MODIFY COLUMN population BIGINT;

ALTER TABLE state_info
MODIFY COLUMN area DECIMAL(10, 2);

ALTER TABLE state_info
MODIFY COLUMN timezone VARCHAR(50);

INSERT INTO state_info  VALUES
(1, 'Maharashtra', 6, 'Mumbai', 123143, 307713, 'IST', 'Eknath Shinde'),
(2, 'Uttar Pradesh', 6, 'Lucknow', 1992341, 243286, 'IST', 'Yogi Adityanath'),
(3, 'Bihar', 6, 'Patna', 104452, 94163, 'IST', 'Nitish Kumar'),
(4, 'West Bengal', 6, 'Kolkata', 976115, 88752, 'IST', 'Mamata Banerjee'),
(5, 'Tamil Nadu', 6, 'Chennai', 721430, 130058, 'IST', 'M. K. Stalin'),
(6, 'Rajasthan', 6, 'Jaipur', 6854837, 342239, 'IST', 'Ashok Gehlot'),
(7, 'Karnataka', 6, 'Bengaluru', 610297, 191791, 'IST', 'Basavaraj Bommai'),
(8, 'Gujarat', 6, 'Gandhinagar', 604392, 196024, 'IST', 'Bhupendra Patel'),
(9, 'Andhra Pradesh', 6, 'Amaravati', 49103, 162968, 'IST', 'Y. S. Jagan Mohan Reddy'),
(10, 'Telangana', 6, 'Hyderabad', 350090, 114840, 'IST', 'K. Chandrashekar Rao'),
(11, 'Kerala', 6, 'Thiruvananthapuram', 334061, 38863, 'IST', 'Pinarayi Vijayan'),
(12, 'Odisha', 6, 'Bhubaneswar', 419218, 155707, 'IST', 'Naveen Patnaik'),
(13, 'Punjab', 6, 'Chandigarh', 277338, 50362, 'IST', 'Bhagwant Mann'),
(14, 'Haryana', 6, 'Chandigarh', 253581, 44212, 'IST', 'Manohar Lal Khattar'),
(15, 'Chhattisgarh', 6, 'Raipur', 255196, 135191, 'IST', 'Bhupesh Baghel'),
(16, 'Jharkhand', 6, 'Ranchi', 3298834, 79714, 'IST', 'Hemant Soren'),
(17, 'Himachal Pradesh', 6, 'Shimla', 68602, 55673, 'IST', 'Jai Ram Thakur'),
(18, 'Uttarakhand', 6, 'Dehradun', 186292, 53483, 'IST', 'Pushkar Singh Dhami'),
(19, 'Tripura', 6, 'Agartala', 36732, 10486, 'IST', 'Biplab Kumar Deb'),
(20, 'Sikkim', 6, 'Gangtok', 610577, 7096, 'IST', 'Prem Singh Tamang');
SELECT * FROM state_info;

UPDATE state_info SET state_name = 'Maharashtra' WHERE id = 1;
UPDATE state_info SET capital_city = 'Lucknow' WHERE id = 2;
UPDATE state_info SET state_population = 20500000 WHERE id = 3;
UPDATE state_info SET cm = 'Mamata Banerjee' WHERE id = 4;
UPDATE state_info SET capital_city = 'Chennai' WHERE id = 5;
UPDATE state_info SET area = 342239.50 WHERE id = 6;
UPDATE state_info SET state_name = 'Karnataka' WHERE id = 7;
UPDATE state_info SET timezone = 'IST' WHERE id = 8;
UPDATE state_info SET cm = 'Yogi Adityanath' WHERE id = 9;
UPDATE state_info SET state_population = 3500000 WHERE id = 10;


