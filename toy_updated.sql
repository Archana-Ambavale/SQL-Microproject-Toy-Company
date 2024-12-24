drop table customer;
drop table toy;
drop table toy_rental;

create table customer(customer_id number(8) primary key,Customer_Name varchar2(32) not null, password varchar2(32),City varchar2(32),State varchar2(32),zip number(9), country varchar2(32));
create table toy(toy_id number(8) primary key,toy_name varchar2(32) not null, toy_type varchar2(32) not null,min_age number(3) check (min_age between 0 and 12),max_age number(3) check (max_age between 0 and 12),price number(9,2)check (price >0), quantity number(9,2) check (quantity >0) , rental_amount number(9,2) check(rental_amount >0));
create table toy_rental (rental_id number(8) primary key,customer_id number(8),toy_id number(8),rental_start_date date not null,rental_end_date date not null,rental_Amount_per_day  number(9,2)not null,total_amount number(9,2) ,fine number(9,2),status varchar2(32),foreign key(customer_id) references customer(Customer_id),foreign key(toy_id) references toy(toy_id));

insert into customer values(1001,'Kanishk','Welcome@123','Chennai','TamilNadu',600075,'India');
insert into customer values(1002,'Krithick','Krithi@321','Bangalore','Karnataka',560001,'India');
insert into customer values(1003,'Chandrav','Chand@423','Mumbai','Maharastra',400001,'India');
insert into customer values(1004,'John','Joh@36','New Delhi','Delhi',110001,'India');
insert into customer values(1005,'Raj','Kri@356','Hyderabad','Telangana',500001,'India');
insert into customer values(1006,'Kishore','Shore@78','Chennai','TamilNadu',600075,'India');
insert into customer values(1007,'Malik','alik@28','Mumbai','Maharastra',400001,'India');
insert into customer values(1008,'Christina','tina@763','Delhi','Delhi',110001,'India');
insert into customer values(1009,'Kenson','Son@54','Hyderabad','Telangana',500001,'India');
insert into customer values(1010,'Alvyna','vyna@385','Vizag','Andhra',530013,'India');
insert into customer values(1011,'Tehani','hani@79','Jaipur','Rajasthan',302001,'India');
insert into customer values(1012,'Jommy','mmy@75','Kolkatta','WestBengal',700001,'India');
insert into customer values(1013,'Stelvin','vin@83','Chandigarh','Punjab',160017,'India');
insert into customer values(1014,'Anjali','lia@15','Jaipur','Rajasthan',302001,'India');
insert into customer values(1015,'Lordia','Dia@28','Chennai','TamilNadu',600075,'India');

insert into toy values (5200,'Stacking Train','Toy',0,3,25,20,5);
insert into toy values (5201,'First Builders','Blocks',0,3,55,10,5);
insert into toy values (5202,'Fill and Spill Coin','Toy',1,3,500,50,20);
insert into toy values (5203,'Lego Ferrai Racer','Electronics',2,6,2500,20,25);
insert into toy values (5204,'Posting Challange','Toy',2,6,500,30,10);
insert into toy values (5205,'Foosball','Toy',4,12,5000,25,50);
insert into toy values (5206,'Battery Bik','Electronics',1,4,500,60,25);
insert into toy values (5207,'Shape and Color Sorter','Toy',3,5,50,20,10);
insert into toy values (5208,'Musical Horn','Musical Toy',3,6,500,10,8);
insert into toy values (5209,'Segway Skateboard','Skateboard',9,12,5000,20,50);
insert into toy values (5210,'Brick Buster','Bricks',9,12,250,20,5);
insert into toy values (5211,'PlayStix','Toy',6,9,400,25,8);
insert into toy values (5212,'Build Dions','Toy',0,3,250,10,5);
insert into toy values (5213,'Balancing Blocks','Toy',6,9,25,50,10);
insert into toy values (5214,'SICK Science','Premium Toys',0,3,50,10,5);
insert into toy values (5215,'Count Colors Band','Toy',1,4,2500,40,10);
insert into toy values (5218,'Race Car','Toy',1,5,350,5,5);
insert into toy values (5219,'Rexter Flying Helicopter','Toy',1,5,350,1,5);
insert into toy values(5216,'My First Climber','Toy',1,4,2500,5,15);
insert into toy values(5217,'Baby Jumper','Toy',1,4,500,5,5);


insert into toy_rental values(2500,1001,5200,'15-Jun-2020','20-jul-2020',5,175,null,'Rented');
insert into toy_rental values(2501,1001,5203,'20-jun-2020','01-aug-2020',25,1000,null,'Rented');
insert into toy_rental values(2502,1005,5213,'20-jun-2020','25-jul-2020',10,350,null,'Rented');
insert into toy_rental values(2503,1010,5205,'01-Jun-2020','15-jul-2020',50,2250,null,'Rented');
insert into toy_rental values(2504,1006,5207,'20-June-2020','01-jul-2020',10,110,null,'Received');
insert into toy_rental values(2505,1007,5208,'20-Jun-2020','25-jun-2020',8,1000,48,'Received');
insert into toy_rental values(2506,1009,5210,'10-Jun-2020','01-Sep-2020',5,465,null,'Rented');
insert into toy_rental values(2407,1012,5210,'01-Mar-2020','01-Jul-2020',5,1000,null,'Pending');
insert into toy_rental values(2508,1013,5211,'01-Jun-2020','01-Aug-2020',8,488,null,'Rented');
insert into toy_rental values(2409,1004,5206,'20-Feb-2020','25-Mar-2020',25,1525,100,'Received');
insert into toy_rental values(2410,1010,5208,'16-Mar-2020','20-Apr-2020',8,280,null,'Received');
insert into toy_rental values(2513,1010,5212,'20-jun-2020','25-Jun-2020',25,100,null,'Received');
insert into toy_rental values(2413,1012,5212,'25-jan-2020','30-jan-2020',25,100,null,'Received');
insert into toy_rental values (2514,1006,5218,'25-Jun-2020','31-jul-2020',5,180,null,'Received');
insert into toy_rental values (2515,1002,5209,'25-Jun-2020','31-jul-2020',50,300,null,'Received');
insert into toy_rental values (2516,1012,5203,'20-May-2020','30-may-2020',25,250,null,'Received');
insert into toy_rental values (2517,1010,5208,'20-jun-2020','30-aug-2020',25,250,null,'Received');
insert into toy_rental values (2518,1010,5203,'10-jun-2020','10-aug-2020',25,250,null,'Received');
insert into toy_rental values (2519,1001,5219,'25-jun-2020','31-Jul-2020',5,175,null,'Rented');
insert into toy_rental values (2420,1002,5219,'25-Apr-2020','30-May-2020',5,175,null,'Rented');
insert into toy_rental values(2511,1001,5217,'	20-Jun-2020','01-Aug-2020',25,1000,null,'Rented');
insert into toy_rental values(2512,1010,5216,'20-Jun-2020','01-Aug-2020',	25,1000,null,'Rented');




select count(*) from customer;
select count(*) from toy;
select count(*) from toy_rental;


