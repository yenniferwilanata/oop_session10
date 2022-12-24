drop database if exists cinema;
create database cinema;
use cinema;

CREATE TABLE customers(
	customer_id char(5) primary key,
	customer_name varchar(50),
	customer_gender varchar(6),
	customer_age int
);

INSERT INTO customers VALUES
('CU001','Alpha','Male',20),
('CU002','Beta','Female',23),
('CU003','Charlie','Male',21),
('CU004','Delta','Female',19),
('CU005','Echo','Male',25);

CREATE TABLE tickets (
  ticket_id char(5) primary key,
  ticket_type varchar(255) NOT NULL,
  price int NOT NULL
);

INSERT INTO tickets VALUES
('TC001', 'Regular', 35000),
('TC002', '4DX', 35000),
('TC003', '3D', 150000),
('TC004', 'Gold', 65000),
('TC005', 'Velvet', 100000),
('TC006', 'Sweetbox', 250000),
('TC007', 'Sphere X', 75000),
('TC008', 'Junior', 100000);


CREATE TABLE sales (
  sales_id char(5) primary key,
  customer_id char(5),
  ticket_id char(5),
  sales_date date NOT NULL,
  foreign key (customer_id) references customers(customer_id) on delete cascade on update cascade,
  foreign key (ticket_id) references tickets(ticket_id) on delete cascade on update cascade
);

INSERT INTO sales VALUES
('SA001', 'CU005', 'TC001', '2021-03-01 19:23:20'),
('SA002', 'CU003', 'TC002', '2021-03-13 06:24:21'),
('SA003', 'CU003', 'TC005', '2021-04-15 08:26:21'),
('SA004', 'CU001', 'TC006', '2021-05-18 11:02:21');
