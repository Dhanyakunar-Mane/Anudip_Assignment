
mysql> create database Aggregation;
Query OK, 1 row affected (0.09 sec)

mysql> use Aggregation;
Database changed
mysql> ^C
mysql> create table orders(order_id varchar(20) not null primary key,Product_name varchar (20) not null,category varchar(20) not null, selling_price double not null, orignail_price double not null);
Query OK, 0 rows affected (0.06 sec)

mysql> desc orders;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| order_id       | varchar(20) | NO   | PRI | NULL    |       |
| Product_name   | varchar(20) | NO   |     | NULL    |       |
| category       | varchar(20) | NO   |     | NULL    |       |
| selling_price  | double      | NO   |     | NULL    |       |
| orignail_price | double      | NO   |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
5 rows in set (0.06 sec)

mysql> ^C
mysql> INSERT INTO orders
    -> (order_id, Product_name, category, selling_price, orignail_price)
    -> VALUES
    -> ('ORD001', 'Laptop', 'Electronics', 55000, 62000),
    -> ('ORD002', 'Shoes', 'Fashion', 2500, 3200),
    -> ('ORD003', 'Mobile', 'Electronics', 18000, 22000),
    -> ('ORD004', 'Watch', 'Accessories', 3500, 5000),
    -> ('ORD005', 'Chair', 'Furniture', 4200, 6000);
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc orders;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| order_id       | varchar(20) | NO   | PRI | NULL    |       |
| Product_name   | varchar(20) | NO   |     | NULL    |       |
| category       | varchar(20) | NO   |     | NULL    |       |
| selling_price  | double      | NO   |     | NULL    |       |
| orignail_price | double      | NO   |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> select * from orders;
+----------+--------------+-------------+---------------+----------------+
| order_id | Product_name | category    | selling_price | orignail_price |
+----------+--------------+-------------+---------------+----------------+
| ORD001   | Laptop       | Electronics |         55000 |          62000 |
| ORD002   | Shoes        | Fashion     |          2500 |           3200 |
| ORD003   | Mobile       | Electronics |         18000 |          22000 |
| ORD004   | Watch        | Accessories |          3500 |           5000 |
| ORD005   | Chair        | Furniture   |          4200 |           6000 |
+----------+--------------+-------------+---------------+----------------+
5 rows in set (0.06 sec)

mysql> SELECT SUM(selling_price) FROM orders;
+--------------------+
| SUM(selling_price) |
+--------------------+
|              83200 |
+--------------------+
1 row in set (0.01 sec)

mysql> SELECT AVG(selling_price) FROM orders;
+--------------------+
| AVG(selling_price) |
+--------------------+
|              16640 |
+--------------------+
1 row in set (0.00 sec)

mysql> SELECT COUNT(selling_price) FROM orders;
+----------------------+
| COUNT(selling_price) |
+----------------------+
|                    5 |
+----------------------+
1 row in set (0.01 sec)

mysql> SELECT MIN(selling_price) FROM orders;
+--------------------+
| MIN(selling_price) |
+--------------------+
|               2500 |
+--------------------+
1 row in set (0.00 sec)

mysql> SELECT MAX(selling_price) FROM orders;
+--------------------+
| MAX(selling_price) |
+--------------------+
|              55000 |
+--------------------+
1 row in set (0.00 sec)


mysql> SELECT * FROM orders ORDER BY selling_price;
+----------+--------------+-------------+---------------+----------------+
| order_id | Product_name | category    | selling_price | orignail_price |
+----------+--------------+-------------+---------------+----------------+
| ORD002   | Shoes        | Fashion     |          2500 |           3200 |
| ORD004   | Watch        | Accessories |          3500 |           5000 |
| ORD005   | Chair        | Furniture   |          4200 |           6000 |
| ORD003   | Mobile       | Electronics |         18000 |          22000 |
| ORD001   | Laptop       | Electronics |         55000 |          62000 |
+----------+--------------+-------------+---------------+----------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM orders ORDER BY selling_price DESC;
+----------+--------------+-------------+---------------+----------------+
| order_id | Product_name | category    | selling_price | orignail_price |
+----------+--------------+-------------+---------------+----------------+
| ORD001   | Laptop       | Electronics |         55000 |          62000 |
| ORD003   | Mobile       | Electronics |         18000 |          22000 |
| ORD005   | Chair        | Furniture   |          4200 |           6000 |
| ORD004   | Watch        | Accessories |          3500 |           5000 |
| ORD002   | Shoes        | Fashion     |          2500 |           3200 |
+----------+--------------+-------------+---------------+----------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM orders ORDER BY selling_price DESC LIMIT 3;
+----------+--------------+-------------+---------------+----------------+
| order_id | Product_name | category    | selling_price | orignail_price |
+----------+--------------+-------------+---------------+----------------+
| ORD001   | Laptop       | Electronics |         55000 |          62000 |
| ORD003   | Mobile       | Electronics |         18000 |          22000 |
| ORD005   | Chair        | Furniture   |          4200 |           6000 |
+----------+--------------+-------------+---------------+----------------+
3 rows in set (0.00 sec)


mysql> CREATE TABLE employee (emp_id varchar(20) not null Primary key,emp_name varchar(20) not null ,Dept varchar(20) not null, salary int not null );
Query OK, 0 rows affected (0.07 sec)

mysql> INSERT INTO employee VALUES ('E001','Rahul','IT',45000),('E002','Sneha','HR',40000),('E003','Amit','Finance',50000),('E004','Priya','Sales',38000),('E005','Karan','Marketing',42000);
Query OK, 5 rows affected (0.07 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+--------+----------+-----------+--------+
| emp_id | emp_name | Dept      | salary |
+--------+----------+-----------+--------+
| E001   | Rahul    | IT        |  45000 |
| E002   | Sneha    | HR        |  40000 |
| E003   | Amit     | Finance   |  50000 |
| E004   | Priya    | Sales     |  38000 |
| E005   | Karan    | Marketing |  42000 |
+--------+----------+-----------+--------+
5 rows in set (0.00 sec)

mysql> SELECT Dept,COUNT(*) AS Total_emp FROM employee GROUP BY Dept;
+-----------+-----------+
| Dept      | Total_emp |
+-----------+-----------+
| IT        |         1 |
| HR        |         1 |
| Finance   |         1 |
| Sales     |         1 |
| Marketing |         1 |
+-----------+-----------+
5 rows in set (0.00 sec)

mysql> INSERT INTO employee VALUES ('E00','Rahul','IT',45000),('E007','Sneha','HR',40000),('E008','Amit','Finance',50000);
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> SELECT Dept,COUNT(*) AS Total_emp FROM employee GROUP BY Dept;
+-----------+-----------+
| Dept      | Total_emp |
+-----------+-----------+
| IT        |         2 |
| HR        |         2 |
| Finance   |         2 |
| Sales     |         1 |
| Marketing |         1 |
+-----------+-----------+
5 rows in set (0.00 sec)

mysql> SELECT Dept,SUM(salary) AS Total_emp FROM employee GROUP BY Dept;
+-----------+-----------+
| Dept      | Total_emp |
+-----------+-----------+
| IT        |     90000 |
| HR        |     80000 |
| Finance   |    100000 |
| Sales     |     38000 |
| Marketing |     42000 |
+-----------+-----------+
5 rows in set (0.06 sec)

mysql> SELECT Dept,AVG(salary) AS Total_emp FROM employee GROUP BY Dept;
+-----------+------------+
| Dept      | Total_emp  |
+-----------+------------+
| IT        | 45000.0000 |
| HR        | 40000.0000 |
| Finance   | 50000.0000 |
| Sales     | 38000.0000 |
| Marketing | 42000.0000 |
+-----------+------------+
5 rows in set (0.00 sec)

mysql> SELECT Dept,salary,count(*) FROM employee GROUP BY Dept,salary;
+-----------+--------+----------+
| Dept      | salary | count(*) |
+-----------+--------+----------+
| IT        |  45000 |        2 |
| HR        |  40000 |        2 |
| Finance   |  50000 |        2 |
| Sales     |  38000 |        1 |
| Marketing |  42000 |        1 |
+-----------+--------+----------+
5 rows in set (0.00 sec)

mysql> SELECT Dept,count(*) AS TOTAL_emp FROM employee GROUP BY Dept having count(*) > 1;
+---------+-----------+
| Dept    | TOTAL_emp |
+---------+-----------+
| IT      |         2 |
| HR      |         2 |
| Finance |         2 |
+---------+-----------+
3 rows in set (0.00 sec)

mysql> SELECT Dept,sum(salary) AS TOTAL_salary FROM employee GROUP BY Dept having sum(salary) > 8000;
+-----------+--------------+
| Dept      | TOTAL_salary |
+-----------+--------------+
| IT        |        90000 |
| HR        |        80000 |
| Finance   |       100000 |
| Sales     |        38000 |
| Marketing |        42000 |
+-----------+--------------+
5 rows in set (0.00 sec)

mysql> SELECT Dept,avg(salary) AS TOTAL_salary FROM employee GROUP BY Dept having avg(salary) > 5000;
+-----------+--------------+
| Dept      | TOTAL_salary |
+-----------+--------------+
| IT        |   45000.0000 |
| HR        |   40000.0000 |
| Finance   |   50000.0000 |
| Sales     |   38000.0000 |
| Marketing |   42000.0000 |
+-----------+--------------+
5 rows in set (0.00 sec)

mysql>