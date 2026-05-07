
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 9
Server version: 8.0.46 MySQL Community Server - GPL

Copyright (c) 2000, 2026, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| ecommerce          |
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
7 rows in set (0.02 sec)

mysql> USE ECOMMERCE
Database changed

mysql> DESC PRODUCT;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| product_id     | varchar(15) | NO   | PRI | NULL    |       |
| product_name   | varchar(15) | NO   |     | NULL    |       |
| category       | varchar(15) | NO   |     | NULL    |       |
| sub_category   | varchar(15) | NO   |     | NULL    |       |
| original_price | double      | NO   |     | NULL    |       |
| selling_price  | double      | NO   |     | NULL    |       |
| stock          | int         | NO   |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

mysql> DESC orders;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| order_id     | int         | NO   | PRI | NULL    | auto_increment |
| customer_id  | varchar(15) | NO   | MUL | NULL    |                |
| product_id   | varchar(15) | NO   | MUL | NULL    |                |
| quantity     | int         | NO   |     | NULL    |                |
| total_price  | double      | NO   |     | NULL    |                |
| payment_mode | varchar(20) | NO   |     | NULL    |                |
| order_date   | date        | NO   |     | NULL    |                |
| order_status | varchar(20) | NO   |     | NULL    |                |
+--------------+-------------+------+-----+---------+----------------+
8 rows in set (0.10 sec)

mysql> SHOW TABLES;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| orders              |
| product             |
+---------------------+
3 rows in set (0.02 sec)

mysql> DESC customer;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| customer_id | varchar(15) | NO   | PRI | NULL    |       |
| name        | varchar(15) | NO   |     | NULL    |       |
| city        | varchar(15) | NO   |     | NULL    |       |
| Email       | varchar(15) | NO   |     | NULL    |       |
| address     | varchar(15) | NO   |     | NULL    |       |
| phoneno     | int         | NO   |     | NULL    |       |
| pincode     | varchar(15) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

mysql> INSERT INTO customer (customer_id,name,city,Email,address,phoneno,pincode)
    -> VALUES ("C1","ansh","mumbai","ansh@gmail.com","Sector 1","1234567890","421301");
Query OK, 1 row affected (0.04 sec)


mysql> SELECT * FROM CUSTOMER ;
+-------------+------+--------+----------------+----------+------------+---------+
| customer_id | name | city   | Email          | address  | phoneno    | pincode |
+-------------+------+--------+----------------+----------+------------+---------+
| C1          | ansh | mumbai | ansh@gmail.com | Sector 1 | 1234567890 | 421301  |
+-------------+------+--------+----------------+----------+------------+---------+
1 row in set (0.00 sec)

mysql> SELECT customer_id,name from customer;
+-------------+------+
| customer_id | name |
+-------------+------+
| C1          | ansh |
+-------------+------+
1 row in set (0.00 sec)


mysql> insert into customer values ('C2','raj','mumbai','raj@gmail.com','sector 2','0987654321','410123'),('C3','sai','mumbai','sai@gmail.com','sector 3','0852012365','421025');
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql>     '>SELECT * FROM CUSTOMER ;
    '> ^C
mysql> SELECT * FROM CUSTOMER ;
+-------------+------+--------+----------------+----------+------------+---------+
| customer_id | name | city   | Email          | address  | phoneno    | pincode |
+-------------+------+--------+----------------+----------+------------+---------+
| C1          | ansh | mumbai | ansh@gmail.com | Sector 1 | 1234567890 | 421301  |
| C2          | raj  | mumbai | raj@gmail.com  | sector 2 |  987654321 | 410123  |
| C3          | sai  | mumbai | sai@gmail.com  | sector 3 |  852012365 | 421025  |
+-------------+------+--------+----------------+----------+------------+---------+
3 rows in set (0.00 sec)

mysql> insert into customer values('C4','dhanya','mumbai','dhany@gmail.com','sector 4','0123456789','421047');
Query OK, 1 row affected (0.01 sec)

mysql> desc customer;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| customer_id | varchar(15) | NO   | PRI | NULL    |       |
| name        | varchar(15) | NO   |     | NULL    |       |
| city        | varchar(15) | NO   |     | NULL    |       |
| Email       | varchar(15) | NO   |     | NULL    |       |
| address     | varchar(15) | NO   |     | NULL    |       |
| phoneno     | int         | NO   |     | NULL    |       |
| pincode     | varchar(15) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+--------+--------+-----------------+----------+------------+---------+
| customer_id | name   | city   | Email           | address  | phoneno    | pincode |
+-------------+--------+--------+-----------------+----------+------------+---------+
| C1          | ansh   | mumbai | ansh@gmail.com  | Sector 1 | 1234567890 | 421301  |
| C2          | raj    | mumbai | raj@gmail.com   | sector 2 |  987654321 | 410123  |
| C3          | sai    | mumbai | sai@gmail.com   | sector 3 |  852012365 | 421025  |
| C4          | dhanya | mumbai | dhany@gmail.com | sector 4 |  123456789 | 421047  |
+-------------+--------+--------+-----------------+----------+------------+---------+
4 rows in set (0.00 sec)

mysql> alter table customer modify customer_id varchar(25) not null ;
Query OK, 0 rows affected (0.07 sec)
Records: 0  Duplicates: 0  Warnings: 0


mysql> desc customer;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| customer_id | varchar(25) | NO   | PRI | NULL    |       |
| name        | varchar(15) | NO   |     | NULL    |       |
| city        | varchar(15) | NO   |     | NULL    |       |
| Email       | varchar(15) | NO   |     | NULL    |       |
| address     | varchar(15) | NO   |     | NULL    |       |
| phoneno     | int         | NO   |     | NULL    |       |
| pincode     | varchar(15) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> alter table customer add billno varchar(15) not null ;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| customer_id | varchar(25) | NO   | PRI | NULL    |       |
| name        | varchar(15) | NO   |     | NULL    |       |
| city        | varchar(15) | NO   |     | NULL    |       |
| Email       | varchar(15) | NO   |     | NULL    |       |
| address     | varchar(15) | NO   |     | NULL    |       |
| phoneno     | int         | NO   |     | NULL    |       |
| pincode     | varchar(15) | NO   |     | NULL    |       |
| billno      | varchar(15) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
8 rows in set (0.00 sec)


mysql> alter table customer add state varchar(15) not null, add country varchar(15) not null;
Query OK, 0 rows affected (0.10 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| customer_id | varchar(25) | NO   | PRI | NULL    |       |
| name        | varchar(15) | NO   |     | NULL    |       |
| city        | varchar(15) | NO   |     | NULL    |       |
| Email       | varchar(15) | NO   |     | NULL    |       |
| address     | varchar(15) | NO   |     | NULL    |       |
| phoneno     | int         | NO   |     | NULL    |       |
| pincode     | varchar(15) | NO   |     | NULL    |       |
| billno      | varchar(15) | NO   |     | NULL    |       |
| state       | varchar(15) | NO   |     | NULL    |       |
| country     | varchar(15) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
10 rows in set (0.00 sec)

mysql> alter table customer change column name customer_name varchar(15) not null ;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| customer_id   | varchar(25) | NO   | PRI | NULL    |       |
| customer_name | varchar(15) | NO   |     | NULL    |       |
| city          | varchar(15) | NO   |     | NULL    |       |
| Email         | varchar(15) | NO   |     | NULL    |       |
| address       | varchar(15) | NO   |     | NULL    |       |
| phoneno       | int         | NO   |     | NULL    |       |
| pincode       | varchar(15) | NO   |     | NULL    |       |
| billno        | varchar(15) | NO   |     | NULL    |       |
| state         | varchar(15) | NO   |     | NULL    |       |
| country       | varchar(15) | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
10 rows in set (0.00 sec)


mysql> create table demo
    -> (id varchar (15) not null primary key,
    -> name varchar (15) not null );
Query OK, 0 rows affected (0.05 sec)

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(15) | NO   | PRI | NULL    |       |
| name  | varchar(15) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> alter table demo drop primary key;
Query OK, 0 rows affected (0.12 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(15) | NO   |     | NULL    |       |
| name  | varchar(15) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> alter table demo add primary key(id);
Query OK, 0 rows affected (0.09 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(15) | NO   | PRI | NULL    |       |
| name  | varchar(15) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> delete from cutomer where
    ->
    -> ^C
mysql> select * from customer;
+-------------+---------------+--------+-----------------+----------+------------+---------+--------+-------+---------+
| customer_id | customer_name | city   | Email           | address  | phoneno    | pincode | billno | state | country |
+-------------+---------------+--------+-----------------+----------+------------+---------+--------+-------+---------+
| C1          | ansh          | mumbai | ansh@gmail.com  | Sector 1 | 1234567890 | 421301  |        |       |         |
| C2          | raj           | mumbai | raj@gmail.com   | sector 2 |  987654321 | 410123  |        |       |         |
| C3          | sai           | mumbai | sai@gmail.com   | sector 3 |  852012365 | 421025  |        |       |         |
| C4          | dhanya        | mumbai | dhany@gmail.com | sector 4 |  123456789 | 421047  |        |       |         |
+-------------+---------------+--------+-----------------+----------+------------+---------+--------+-------+---------+
4 rows in set (0.00 sec)

mysql>  delete from customer where  customer_id= 'C4';
Query OK, 1 row affected (0.01 sec)

mysql> select * from customer;
+-------------+---------------+--------+----------------+----------+------------+---------+--------+-------+---------+
| customer_id | customer_name | city   | Email          | address  | phoneno    | pincode | billno | state | country |
+-------------+---------------+--------+----------------+----------+------------+---------+--------+-------+---------+
| C1          | ansh          | mumbai | ansh@gmail.com | Sector 1 | 1234567890 | 421301  |        |       |         |
| C2          | raj           | mumbai | raj@gmail.com  | sector 2 |  987654321 | 410123  |        |       |         |
| C3          | sai           | mumbai | sai@gmail.com  | sector 3 |  852012365 | 421025  |        |       |         |
+-------------+---------------+--------+----------------+----------+------------+---------+--------+-------+---------+
3 rows in set (0.00 sec)

mysql> truncate table orders;
Query OK, 0 rows affected (0.16 sec)

mysql> desc orders;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| order_id     | int         | NO   | PRI | NULL    | auto_increment |
| customer_id  | varchar(15) | NO   | MUL | NULL    |                |
| product_id   | varchar(15) | NO   | MUL | NULL    |                |
| quantity     | int         | NO   |     | NULL    |                |
| total_price  | double      | NO   |     | NULL    |                |
| payment_mode | varchar(20) | NO   |     | NULL    |                |
| order_date   | date        | NO   |     | NULL    |                |
| order_status | varchar(20) | NO   |     | NULL    |                |
+--------------+-------------+------+-----+---------+----------------+
8 rows in set (0.00 sec)

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(15) | NO   | PRI | NULL    |       |
| name  | varchar(15) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> truncate table demo;
Query OK, 0 rows affected (0.07 sec)

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(15) | NO   | PRI | NULL    |       |
| name  | varchar(15) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)



SHOW DATABASES;                    -- Displays all databases

USE ecommerce;                    -- Selects ecommerce database

SHOW TABLES;                      -- Displays all tables in database

DESC product;                     -- Shows structure of product table

DESC orders;                      -- Shows structure of orders table

DESC customer;                    -- Shows structure of customer table

INSERT INTO customer(customer_id,name,city,email,address,phoneno,pincode)
VALUES ('C1','ansh','mumbai','ansh@gmail.com','Sector 1',1234567890,'421301');     -- Inserts single record

SELECT * FROM customer;           -- Displays all records from customer table

SELECT customer_id,name FROM customer;   -- Displays selected columns

INSERT INTO customer
VALUES ('C2','raj','mumbai','raj@gmail.com','sector 2',987654321,'410123'),
('C3','sai','mumbai','sai@gmail.com','sector 3',852012365,'421025');               -- Inserts multiple records

INSERT INTO customer
VALUES ('C4','dhanya','mumbai','dhany@gmail.com','sector 4',123456789,'421047');   -- Inserts another record

ALTER TABLE customer
MODIFY customer_id VARCHAR(25) NOT NULL;     -- Modifies column datatype/size

ALTER TABLE customer
ADD billno VARCHAR(15) NOT NULL;             -- Adds new column

ALTER TABLE customer
ADD state VARCHAR(15) NOT NULL,
ADD country VARCHAR(15) NOT NULL;            -- Adds multiple columns

ALTER TABLE customer
CHANGE COLUMN name customer_name VARCHAR(15) NOT NULL;   -- Renames column

CREATE TABLE demo(
id VARCHAR(15) NOT NULL PRIMARY KEY,
name VARCHAR(15) NOT NULL
);                                            -- Creates new table

DESC demo;                                   -- Shows structure of demo table

ALTER TABLE demo
DROP PRIMARY KEY;                            -- Removes primary key

ALTER TABLE demo
ADD PRIMARY KEY(id);                         -- Adds primary key

DELETE FROM customer
WHERE customer_id='C4';                      -- Deletes specific record

TRUNCATE TABLE orders;                       -- Deletes all records from orders table

TRUNCATE TABLE demo;                         -- Deletes all records from demo table

SELECT * FROM customer;                      -- Displays customer table data