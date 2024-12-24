CREATE DATABASE Toy_Company;

USE Toy_Company;

-- Creating Tables
DROP TABLE IF EXISTS customer; 
CREATE TABLE customer
(
	customer_id INT PRIMARY KEY,
	Customer_Name VARCHAR(32) NOT NULL, 
	password VARCHAR (32),
	City VARCHAR (32),
	State VARCHAR (20),
	zip INT, 
	country VARCHAR (32)
);

CREATE TABLE toy
(
	toy_id INT PRIMARY KEY,
	toy_name VARCHAR (32) NOT NULL,
	toy_type VARCHAR (32) NOT NULL,
	min_age INT CHECK (min_age BETWEEN 0 AND 12),
	max_age INT CHECK (max_age BETWEEN 0 AND 12),
	price INT CHECK (price >0), 
	quantity INT CHECK (quantity >0), 
	rental_amount INT CHECK (rental_amount >0)
);

CREATE TABLE toy_rental 
(
	rental_id INT PRIMARY KEY,
	customer_id INT,
	toy_id INT,
	rental_start_date DATE NOT NULL,
	rental_end_date DATE NOT NULL,
	rental_Amount_per_day INT NOT NULL,
	total_amount INT,
	fine INT,
	status VARCHAR (32), 
	FOREIGN KEY(customer_id) REFERENCES customer(Customer_id),
	FOREIGN KEY(toy_id) REFERENCES toy(toy_id)
);

-- inserting data into table
-- Customer table
INSERT INTO customer VALUES(1001,'Kanishk','Welcome@123','Chennai','TamilNadu',600075,'India');
INSERT INTO customer VALUES(1002,'Krithick','Krithi@321','Bangalore','Karnataka',560001,'India');
INSERT INTO customer VALUES(1003,'Chandrav','Chand@423','Mumbai','Maharastra',400001,'India');
INSERT INTO customer VALUES(1004,'John','Joh@36','New Delhi','Delhi',110001,'India');
INSERT INTO customer VALUES(1005,'Raj','Kri@356','Hyderabad','Telangana',500001,'India');
INSERT INTO customer VALUES(1006,'Kishore','Shore@78','Chennai','TamilNadu',600075,'India');
INSERT INTO customer VALUES(1007,'Malik','alik@28','Mumbai','Maharastra',400001,'India');
INSERT INTO customer VALUES(1008,'Christina','tina@763','Delhi','Delhi',110001,'India');
INSERT INTO customer VALUES(1009,'Kenson','Son@54','Hyderabad','Telangana',500001,'India');
INSERT INTO customer VALUES(1010,'Alvyna','vyna@385','Vizag','Andhra',530013,'India');
INSERT INTO customer VALUES(1011,'Tehani','hani@79','Jaipur','Rajasthan',302001,'India');
INSERT INTO customer VALUES(1012,'Jommy','mmy@75','Kolkatta','WestBengal',700001,'India');
INSERT INTO customer VALUES(1013,'Stelvin','vin@83','Chandigarh','Punjab',160017,'India');
INSERT INTO customer VALUES(1014,'Anjali','lia@15','Jaipur','Rajasthan',302001,'India');
INSERT INTO customer VALUES(1015,'Lordia','Dia@28','Chennai','TamilNadu',600075,'India');

SELECT * FROM customer;

-- Toy Table
INSERT INTO toy VALUES (5200,'Stacking Train','Toy',0,3,25,20,5);
INSERT INTO toy VALUES (5201,'First Builders','Blocks',0,3,55,10,5);
INSERT INTO toy VALUES (5202,'Fill and Spill Coin','Toy',1,3,500,50,20);
INSERT INTO toy VALUES (5203,'Lego Ferrai Racer','Electronics',2,6,2500,20,25);
INSERT INTO toy VALUES (5204,'Posting Challange','Toy',2,6,500,30,10);
INSERT INTO toy VALUES (5205,'Foosball','Toy',4,12,5000,25,50);
INSERT INTO toy VALUES (5206,'Battery Bik','Electronics',1,4,500,60,25);
INSERT INTO toy VALUES (5207,'Shape and Color Sorter','Toy',3,5,50,20,10);
INSERT INTO toy VALUES (5208,'Musical Horn','Musical Toy',3,6,500,10,8);
INSERT INTO toy VALUES (5209,'Segway Skateboard','Skateboard',9,12,5000,20,50);
INSERT INTO toy VALUES (5210,'Brick Buster','Bricks',9,12,250,20,5);
INSERT INTO toy VALUES (5211,'PlayStix','Toy',6,9,400,25,8);
INSERT INTO toy VALUES (5212,'Build Dions','Toy',0,3,250,10,5);
INSERT INTO toy VALUES (5213,'Balancing Blocks','Toy',6,9,25,50,10);
INSERT INTO toy VALUES (5214,'SICK Science','Premium Toys',0,3,50,10,5);
INSERT INTO toy VALUES (5215,'Count Colors Band','Toy',1,4,2500,40,10);
INSERT INTO toy VALUES (5218,'Race Car','Toy',1,5,350,5,5);
INSERT INTO toy VALUES (5219,'Rexter Flying Helicopter','Toy',1,5,350,1,5);
INSERT INTO toy VALUES (5216,'My First Climber','Toy',1,4,2500,5,15);
INSERT INTO toy VALUES (5217,'Baby Jumper','Toy',1,4,500,5,5);

SELECT * FROM toy; 

-- Toy Rental Table
INSERT INTO toy_rental VALUES(2500,1001,5200,'2020-06-15','2020-07-20',5,175,null,'Rented');
INSERT INTO toy_rental VALUES(2501,1001,5203,'2020-06-20','2020-08-01',25,1000,null,'Rented');
INSERT INTO toy_rental VALUES(2502,1005,5213,'2020-06-20','2020-07-25',10,350,null,'Rented');
INSERT INTO toy_rental VALUES(2503,1010,5205,'2020-06-01','2020-07-15',50,2250,null,'Rented');
INSERT INTO toy_rental VALUES(2504,1006,5207,'2020-06-20','2020-07-01',10,110,null,'Received');
INSERT INTO toy_rental VALUES(2505,1007,5208,'2020-06-20','2020-06-25',8,1000,48,'Received');
INSERT INTO toy_rental VALUES(2506,1009,5210,'2020-06-10','2020-09-01',5,465,null,'Rented');
INSERT INTO toy_rental VALUES(2407,1012,5210,'2020-03-01','2020-07-01',5,1000,null,'Pending');
INSERT INTO toy_rental VALUES(2508,1013,5211,'2020-06-01','2020-08-01',8,488,null,'Rented');
INSERT INTO toy_rental VALUES(2409,1004,5206,'2020-02-20','2020-03-25',25,1525,100,'Received');
INSERT INTO toy_rental VALUES(2410,1010,5208,'2020-03-16','2020-04-20',8,280,null,'Received');
INSERT INTO toy_rental VALUES(2513,1010,5212,'20-06-2020','2020-06-25',25,100,null,'Received');
INSERT INTO toy_rental VALUES(2413,1012,5212,'2020-01-25','2020-01-30',25,100,null,'Received');
INSERT INTO toy_rental VALUES (2514,1006,5218,'2020-06-25','2020-07-31',5,180,null,'Received');
INSERT INTO toy_rental VALUES (2515,1002,5209,'2020-06-25','2020-07-31',50,300,null,'Received');
INSERT INTO toy_rental VALUES (2516,1012,5203,'2020-05-20','2020-05-30',25,250,null,'Received');
INSERT INTO toy_rental VALUES (2517,1010,5208,'2020-06-20','2020-08-30',25,250,null,'Received');
INSERT INTO toy_rental VALUES (2518,1010,5203,'2020-06-10','2020-08-10',25,250,null,'Received');
INSERT INTO toy_rental VALUES (2519,1001,5219,'2020-06-25','2020-07-31',5,175,null,'Rented');
INSERT INTO toy_rental VALUES (2420,1002,5219,'2020-04-25','2020-05-30',5,175,null,'Rented');
INSERT INTO toy_rental VALUES(2511,1001,5217,'2020-06-20','2020-08-01',25,1000,null,'Rented');
INSERT INTO toy_rental VALUES(2512,1010,5216,'2020-06-20','2020-08-01',25,1000,null,'Rented');

SELECT * FROM toy_rental;

-- Bussiness Questions & Answer

-- Q.1 Display the customers Count based on the city.

SELECT 
	city,COUNT(*) as city_count
FROM customer
GROUP BY city;

-- Q.2 Display the customer who has availed rental more than two toys currently.

SELECT 
	c.customer_name FROM toy_rental AS r NATURAL JOIN customer AS c
GROUP BY r.customer_id
HAVING COUNT(r.toy_id) > 2;

-- Q.3 Display the toys which were not at all rented out and display toy names in the ascending order of the toy id. 

SELECT 
t.toy_name from toy as t left outer join toy_rental as r
ON t.toy_id = r.toy_id
WHERE r.toy_id IS NULL;

-- Q.4 Display the toys which was rented out on 20/05/2020.

SELECT * FROM toy_rental
WHERE rental_start_date = '2020-05-20';

-- Q.5 Fetch the toys which were on rent for maximum duration.

SELECT toy_name FROM toy_rental NATURAL JOIN toy 
WHERE Datediff(rental_end_date, rental_start_date) =
(SELECT max(datediff(rental_end_date, rental_start_date)) FROM toy_rental);

-- Q.6 Display the Rental details of a customer "John".

SELECT * FROM toy_rental
WHERE customer_id = (SELECT customer_id FROM customer WHERE Customer_Name = "John");

-- Q.7 Fetch the user information who have not returned the toys after the rental period.

SELECT * FROM customer WHERE customer_id = 
	(SELECT customer_id FROM toy_rental WHERE status = "pending");
    
-- Q.8 Identify the customers who have opted for more than 1 toy for rental. 

SELECT * FROM customer 
WHERE customer_id IN 
	(SELECT customer_id FROM toy_rental
    GROUP BY customer_id
    HAVING count(toy_id) >1);
    
-- Q.9 Display the customer details who has availed electronic toys for rental.
-- Note: sort the output based on customer_id.

SELECT c.customer_name, c.city, r.customer_id FROM
toy_rental AS r NATURAL JOIN customer AS c
WHERE r.toy_id IN 
	(SELECT t.toy_id FROM toy as t WHERE t.toy_type = 'Electronics'); 
    
-- Q.10 Display the ids of top 2 customers in descending order of total revenue generated for each customer. 

SELECT c.customer_name, c.customer_id, sum(r.total_amount)
FROM customer AS c JOIN toy_rental AS r
ON c.customer_id = r.customer_id
GROUP BY r.customer_id
ORDER BY 3 DESC LIMIT 2; 

-- END OF PROJECT