/*
Michael Braunstein
CISS-250-300
Thompson
Assignment FP
November 28, 2018
*/


DROP TABLE property CASCADE CONSTRAINTS;
DROP TABLE department CASCADE CONSTRAINTS;
DROP TABLE employee CASCADE CONSTRAINTS;
DROP TABLE room CASCADE CONSTRAINTS;
DROP TABLE booking CASCADE CONSTRAINTS;
DROP TABLE customer CASCADE CONSTRAINTS;
DROP TABLE reward_program CASCADE CONSTRAINTS;
DROP TABLE black_list CASCADE CONSTRAINTS;
DROP TABLE employee_record CASCADE CONSTRAINTS; 


CREATE TABLE property (
property_ID NUMBER,
property_name VARCHAR2 (69 CHAR),
address_1_line_1 VARCHAR2(29 CHAR),
address_1_line_2 VARCHAR2(19 CHAR),
address_1_city VARCHAR2(21 CHAR),
address_1_state VARCHAR2(4 CHAR),
address_1_zip VARCHAR2(6 CHAR),
PRIMARY KEY (property_ID)
);

desc property;

INSERT INTO property VALUES (1, 'Empire State Building', '350 Fifth Avenue', null, 'New York', 'NY', '10036');
INSERT INTO property VALUES (2, 'King David Hotel', '23 King David', 'Tel Aviv', null, 'IL', '1q4g6');
INSERT INTO property VALUES (3, 'Beverly Wilshire Hotel', '9500 Wilshire Blvd', null, 'Beverly Hills', 'CA', '90212');
INSERT INTO property VALUES (4, 'Hilton Fort Worth', '815 Main St', null, 'Fort Worth', 'TX', '76102');
(select property_ID, property_name, address_1_line_1, address_1_line_2, address_1_city, address_1_state, address_1_zip   
  FROM property);  
  
  (select * from property);

CREATE TABLE room(
property_ID number,
room_ID number,
room_type varchar2 (59 char),
primary key (property_ID, room_ID),
FOREIGN KEY (property_ID) references property
);

insert into room   (property_ID, room_ID, room_type) VALUES  (1, 1, 'luxury');
insert into room   (property_ID, room_ID, room_type) VALUES  (1, 2, 'luxury');
insert into room   (property_ID, room_ID, room_type) VALUES  (1, 3, 'luxury');
insert into room   (property_ID, room_ID, room_type) VALUES  (1, 4, 'luxury');
insert into room   (property_ID, room_ID, room_type) VALUES  (1, 5, 'luxury');
insert into room   (property_ID, room_ID, room_type) VALUES  (1, 6, 'luxury');
insert into room   (property_ID, room_ID, room_type) VALUES  (2, 1, 'luxury');
insert into room   (property_ID, room_ID, room_type) VALUES  (2, 2, 'luxury');
insert into room   (property_ID, room_ID, room_type) VALUES  (2, 3, 'luxury');
insert into room   (property_ID, room_ID, room_type) VALUES  (2, 4, 'luxury');
insert into room   (property_ID, room_ID, room_type) VALUES  (2, 5, 'luxury');
insert into room   (property_ID, room_ID, room_type) VALUES  (2, 6, 'luxury');
insert into room   (property_ID, room_ID, room_type) VALUES  (3, 1, 'suite');
insert into room   (property_ID, room_ID, room_type) VALUES  (3, 2, 'dble');
insert into room   (property_ID, room_ID, room_type) VALUES  (3, 3, 'suite');
insert into room   (property_ID, room_ID, room_type) VALUES  (3, 4, 'dble');
insert into room   (property_ID, room_ID, room_type) VALUES  (3, 5, 'suite');
insert into room   (property_ID, room_ID, room_type) VALUES  (3, 6, 'dble');
insert into room   (property_ID, room_ID, room_type) VALUES  (4, 1, 'presidential suite');
insert into room   (property_ID, room_ID, room_type) VALUES  (4, 2, 'dble');
insert into room   (property_ID, room_ID, room_type) VALUES  (4, 3, 'suite');
insert into room   (property_ID, room_ID, room_type) VALUES  (4, 4, 'dble');
insert into room   (property_ID, room_ID, room_type) VALUES  (4, 5, 'suite');
insert into room   (property_ID, room_ID, room_type) VALUES  (4, 6, 'dble');
(select * from room);
desc room;

CREATE TABLE department (
department_ID number,
pay_rate number,
department_name VARCHAR2(22 CHAR),
primary key (department_ID) 
);

desc department;
INSERT INTO department (department_ID, pay_rate, department_name) VALUES ( 1, 15000, 'management');
INSERT INTO department (department_ID, pay_rate, department_name) VALUES ( 2, 10000, 'maintenance');
INSERT INTO department (department_ID, pay_rate, department_name) VALUES ( 3, 8000, 'housecleaning');
INSERT INTO department (department_ID, pay_rate, department_name) VALUES ( 4, 9000, 'catering');
INSERT INTO department (department_ID, pay_rate, department_name) VALUES ( 5, 10000, 'reception'); 


(select department_ID, pay_rate, department_name from department);  
 (select * from department);


CREATE TABLE employee (
employee_ID number primary key ,
f_name VARCHAR2(12 CHAR),
l_name VARCHAR2(12 CHAR),
address_line_1 VARCHAR2(29 CHAR),
address_line_2 VARCHAR2(19 CHAR),
address_city VARCHAR2(11 CHAR),
address_state VARCHAR2(4 CHAR),
address_zip VARCHAR2(8 CHAR));

desc employee;
INSERT INTO employee VALUES ( 1,  'Maximus', 'Prophet', '15 Thames St', 'second floor', 'Brooklyn', 'NY', '11217');
INSERT INTO employee VALUES ( 2,  'Fred', 'Hart',  '17 Squadron Blvd', null, 'New City', 'NY', '10956');
INSERT INTO employee VALUES ( 3,  'Betsy', 'Rubble',  '17 Squadron Blvd', null, 'New City', 'NY', '10956');
INSERT INTO employee VALUES ( 4,  'George', 'Hart',  '17 Squadron Blvd', null, 'New City', 'NY', '10956');
INSERT INTO employee VALUES ( 5,  'Xavier', 'Hart',  '17 Squadron Blvd', null, 'New City', 'NY', '10956');
INSERT INTO employee VALUES ( 6,  'Marcelle', 'Hart',  '17 Squadron Blvd', null, 'New City', 'NY', '10956');
INSERT INTO employee VALUES ( 7,  'Gennifer', 'Flowers',  '11 Main Blvd', null, 'Little Rock', 'AR', '10956');
INSERT INTO employee VALUES ( 8,  'Monica', 'Lewinsky',  '27 Broadway', 'Apt 19', 'New York', 'NY', '10006');
INSERT INTO employee VALUES ( 9,  'Malcolm', 'Little', '3448 Pinkney St', null, 'Omaha', 'NE', '68022' );
INSERT INTO employee VALUES ( 10, 'John', 'Thompson', '1 Bell Drive', null, 'Highland', 'NY', '12528' );
INSERT INTO employee VALUES ( 11, 'Fred', 'Vanderbilt',  '119 Vanderbilt Park Rd', null, 'Hyde Park', 'NY', '12538'  );
INSERT INTO employee VALUES ( 12, 'Michael', 'Blomberg', '334 E. 74th St.', null,  'New York', 'NY', '10021' );
INSERT INTO employee VALUES ( 13, 'Elian', 'Gonzalez',  '2319 NW 2nd St', null, 'Miami', 'FL', '33125'  );

(select employee_ID, f_name, l_name, address_line_1, address_line_2, address_city, address_state, address_zip from employee);  
  (select * from employee);

CREATE TABLE employee_record (
employee_ID number, 
property_ID number,
department_ID number,
hire_date number,
pay_rate number,
foreign key (employee_ID) REFERENCES employee,
foreign key (property_ID) REFERENCES property,
foreign key (department_ID)  REFERENCES department,
PRIMARY KEY (employee_ID, department_ID) 
);

INSERT INTO employee_record (employee_ID, property_ID, department_ID, hire_date, pay_rate) VALUES (1, 1, 1, 04221997, 15599);
INSERT INTO employee_record (employee_ID, property_ID, department_ID, hire_date, pay_rate) VALUES (2, 1, 5, 11232018, 59099);
INSERT INTO employee_record (employee_ID, property_ID, department_ID, hire_date, pay_rate) VALUES (3, 2, 4, 01012001, 89915);
INSERT INTO employee_record (employee_ID, property_ID, department_ID, hire_date, pay_rate) VALUES (4, 2, 3, 11231963, 586895);
INSERT INTO employee_record (employee_ID, property_ID, department_ID, hire_date, pay_rate) VALUES (5, 3, 2, 08211986, 176475);
INSERT INTO employee_record (employee_ID, property_ID, department_ID, hire_date, pay_rate) VALUES (6, 4, 1, 09211992, 345675);

(select employee_ID, property_ID, department_ID  FROM employee_record);  
  
  (select * from employee_record);

CREATE TABLE customer (
customer_ID NUMBER PRIMARY KEY,
f_name VARCHAR2(19 CHAR),
l_name VARCHAR2(19 CHAR),
address_1_line_1 VARCHAR2(29 CHAR),
address_1_line_2 VARCHAR2(29 CHAR),
address_1_city VARCHAR2(21 CHAR),
address_1_state VARCHAR2(4 CHAR),
address_1_zip VARCHAR2(5 CHAR),
credit_card_1_exp VARCHAR2(5 CHAR),
credit_card_1_num VARCHAR2(21 CHAR),
account_balance NUMBER(7) DEFAULT 0);

desc customer;

INSERT INTO customer VALUES (1,  'Max', 'Antin',  '950 Flemington St', 'second floor', 'Pittsburgh', 'PA', '15217', '11/29', '6011-999-9999', 0);
INSERT INTO customer VALUES (2,  'Joseph', 'Antin',  '956 Flemington St', null, 'Pittsburgh', 'PA', '15217', '11/29', '6011-999-9999', 0);
INSERT INTO customer VALUES (3,  'Florence', 'Antin',  '956 Flemington St', null, 'Pittsburgh', 'PA', '15217', '11/29', '6011-999-9999', 0);
INSERT INTO customer VALUES (4,  'Brad', 'Rephen',  '11 Lime Kiln St', null, 'Spring Valley', 'NY', '10952', '11/29', '6011-999-9999', 0);
INSERT INTO customer VALUES (5,  'Fred', 'Hart',  '17 Squadron Blvd', 'Suite 312', 'New City', 'NY', '10956', '11/29', '6011-999-9999', 0);
INSERT INTO customer VALUES (6,  'George HW', 'BUSH',  '2430 E ST NW ', 'Suite 219', 'Washington', 'DC', '20037', '11/29', '6011-999-9999', 0);
INSERT INTO customer Values (7, 'John Fitzgerald', 'Kennedy', '100 Marchant Avenue', null, 'Hyannis Port', 'MA', '02601', '11/63', '6011-999-9999', 0);
(select customer_ID, f_name, l_name, address_1_line_1, address_1_line_2, address_1_city, address_1_state, address_1_zip, credit_card_1_exp, credit_card_1_num, account_balance from customer); 
  (select * from customer);


CREATE TABLE booking (
property_ID number, 
room_ID number,
customer_ID number ,
reservation_date number,
number_days number,
foreign key (customer_ID) REFERENCES customer,
foreign key (property_ID, room_ID) REFERENCES room,
PRIMARY KEY (property_ID, room_ID, Customer_ID) 
);

desc booking;

INSERT INTO booking (customer_ID, room_ID, property_ID, number_days, reservation_date) VALUES (1, 1, 1, 3, 121119);
INSERT INTO booking (customer_ID, room_ID, property_ID, number_days, reservation_date) VALUES (2, 2, 2, 4, 244551);
INSERT INTO booking (customer_ID, room_ID, property_ID, number_days, reservation_date) VALUES (3, 3, 3, 5, 223114);
INSERT INTO booking (customer_ID, room_ID, property_ID, number_days, reservation_date) VALUES (4, 1, 1, 3, 232111);
INSERT INTO booking (customer_ID, room_ID, property_ID, number_days, reservation_date) VALUES (5, 2, 2, 2, 223331);
INSERT INTO booking (customer_ID, room_ID, property_ID, number_days, reservation_date) VALUES (6, 2, 4, 1, 223451);
INSERT INTO booking (customer_ID, room_ID, property_ID, number_days, reservation_date) VALUES (7, 3, 4, 4, 112363);
INSERT INTO booking (customer_ID, room_ID, property_ID, number_days, reservation_date) VALUES (6, 6, 4, 2, 112363);

(select customer_ID, number_days, reservation_date from booking);  
  select * from booking;
 


CREATE TABLE black_list (
customer_ID number,
property_ID number, 
foreign key (customer_ID) REFERENCES customer,
foreign key (property_ID) REFERENCES property,
PRIMARY KEY (property_ID, customer_ID) ,
--(customer_ID, property_ID) NUMBER PRIMARY KEY,
offense VARCHAR2 ( 59)
);

INSERT INTO black_list (customer_ID, property_ID, offense) VALUES (1, 1, 'Monkey Business');
INSERT INTO black_list (customer_ID, property_ID, offense) VALUES (6, 1, 'Raising New Taxes');

desc black_list;
(select customer_ID, property_ID, offense from black_list);  
  select * from black_list;

CREATE TABLE reward_program (
customer_ID number,
points number, 
foreign key (customer_ID) REFERENCES customer,
PRIMARY KEY (customer_ID) 
);
desc reward_program;

INSERT INTO reward_program (customer_ID, points)  VALUES (1,  95); 

select * from reward_program;
SELECT*FROM   (reward_program); 
  
PROMPT Who was staying in the Dallas Hilton on November 23, 1963?;
SELECT b.reservation_date, b.customer_ID, customer.f_name, customer.l_name, customer.customer_ID 
FROM  booking b    
JOIN customer on b.customer_ID = customer.customer_ID
WHERE b.reservation_date = 112363 and property_ID = 4;

PROMPT How many customers are from Pittsburgh?;
SELECT c.customer_ID, c.f_name, c.l_name 
FROM customer c  
WHERE c.address_1_city = 'Pittsburgh'
ORDER BY c.l_name, c.f_name;

Prompt What are all the reasons patron have been black listed?;
SELECT bl.offense FROM black_list bl WHERE bl.offense is not null;

PROMPT What is the difference between Employee pay rate and department pay rate?

SELECT employee.employee_ID, employee.f_name, employee.l_name, employee_record.pay_rate as actual_pay, department.pay_rate AS Department_Pay,  (employee_record.pay_rate-department.pay_rate) AS diff_pay, department.department_name
FROM employee 
inner join employee_record on employee.employee_ID = employee_record.employee_ID
INNER JOIN department on employee_record.department_id  = department.department_ID;   
--FROM department, employee_record, employee 
--JOIN department on department_ID = employee_record.department_ID;
--JOIN employee_record employee_ID on employee.employee_ID
desc department

Prompt
prompt Give a pay raise of $10,000 to employee Maximus Prophet 

update employee_record set employee_record.pay_rate = 25599 where employee_record.employee_ID = 1 ;

SELECT employee.employee_ID, employee.f_name, employee.l_name, employee_record.pay_rate as new_pay_rate, department.department_name
FROM employee 
inner join employee_record on employee.employee_ID = employee_record.employee_ID 
INNER JOIN department on employee_record.department_id  = department.department_ID where employee.employee_ID = 1; 