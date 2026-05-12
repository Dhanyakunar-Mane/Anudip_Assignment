

mysql> create table deapartment (dept_id int primary key not null , dept_name varchar(20) not null);
Query OK, 0 rows affected (0.07 sec)

mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| deapartment         |
| demo                |
| orders              |
| product             |
+---------------------+
5 rows in set (0.00 sec)

mysql> desc deapartment;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| dept_id   | int         | NO   | PRI | NULL    |       |
| dept_name | varchar(20) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)


mysql> INSERT INTO department (dept_id, dept_name)
    -> VALUES (1, 'HR'),(2, 'IT'),(3, 'Sales'),(4, 'Finance'),(5, 'Marketing');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> CREATE TABLE employee (
    ->     emp_id INT PRIMARY KEY,
    ->     emp_name VARCHAR(50) NOT NULL,
    ->     dept_id INT NOT NULL);
Query OK, 0 rows affected (0.04 sec)

mysql> desc employee
    -> ;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| emp_id   | int         | NO   | PRI | NULL    |       |
| emp_name | varchar(50) | NO   |     | NULL    |       |
| dept_id  | int         | NO   |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> INSERT INTO employee (emp_id, emp_name, dept_id)
    -> VALUES(101, 'Ansh', 2),(102, 'Raj', 1),(103, 'Sai', 3),(104, 'Amit', 2),(105, 'Neha', 4),(106, 'Vikram', 5);
Query OK, 6 rows affected (0.01 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM department;
+---------+-----------+
| dept_id | dept_name |
+---------+-----------+
|       1 | HR        |
|       2 | IT        |
|       3 | Sales     |
|       4 | Finance   |
|       5 | Marketing |
+---------+-----------+
5 rows in set (0.00 sec)

mysql> SELECT emp_name, dept_name FROM employee
    -> INNER JOIN department
    -> ON employee.dept_id = department.dept_id;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| Ansh     | IT        |
| Raj      | HR        |
| Sai      | Sales     |
| Amit     | IT        |
| Neha     | Finance   |
| Vikram   | Marketing |
+----------+-----------+
6 rows in set (0.00 sec)

mysql> SELECT emp_name, dept_name FROM employee LEFT JOIN department ON employee.dept_id = department.dept_id;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| Ansh     | IT        |
| Raj      | HR        |
| Sai      | Sales     |
| Amit     | IT        |
| Neha     | Finance   |
| Vikram   | Marketing |
+----------+-----------+
6 rows in set (0.00 sec)

mysql> SELECT emp_name, dept_name FROM employee RIGHT JOIN department ON employee.dept_id = department.dept_id;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| Raj      | HR        |
| Amit     | IT        |
| Ansh     | IT        |
| Sai      | Sales     |
| Neha     | Finance   |
| Vikram   | Marketing |
+----------+-----------+
6 rows in set (0.00 sec)

mysql> SELECT emp_name, dept_name FROM employee FULL JOIN department ;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| Ansh     | Marketing |
| Ansh     | Finance   |
| Ansh     | Sales     |
| Ansh     | IT        |
| Ansh     | HR        |
| Raj      | Marketing |
| Raj      | Finance   |
| Raj      | Sales     |
| Raj      | IT        |
| Raj      | HR        |
| Sai      | Marketing |
| Sai      | Finance   |
| Sai      | Sales     |
| Sai      | IT        |
| Sai      | HR        |
| Amit     | Marketing |
| Amit     | Finance   |
| Amit     | Sales     |
| Amit     | IT        |
| Amit     | HR        |
| Neha     | Marketing |
| Neha     | Finance   |
| Neha     | Sales     |
| Neha     | IT        |
| Neha     | HR        |
| Vikram   | Marketing |
| Vikram   | Finance   |
| Vikram   | Sales     |
| Vikram   | IT        |
| Vikram   | HR        |
+----------+-----------+
30 rows in set, 1 warning (0.06 sec)

mysql> SELECT emp_name, dept_name FROM employee CROSS JOIN department ;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| Ansh     | Marketing |
| Ansh     | Finance   |
| Ansh     | Sales     |
| Ansh     | IT        |
| Ansh     | HR        |
| Raj      | Marketing |
| Raj      | Finance   |
| Raj      | Sales     |
| Raj      | IT        |
| Raj      | HR        |
| Sai      | Marketing |
| Sai      | Finance   |
| Sai      | Sales     |
| Sai      | IT        |
| Sai      | HR        |
| Amit     | Marketing |
| Amit     | Finance   |
| Amit     | Sales     |
| Amit     | IT        |
| Amit     | HR        |
| Neha     | Marketing |
| Neha     | Finance   |
| Neha     | Sales     |
| Neha     | IT        |
| Neha     | HR        |
| Vikram   | Marketing |
| Vikram   | Finance   |
| Vikram   | Sales     |
| Vikram   | IT        |
| Vikram   | HR        |
+----------+-----------+
30 rows in set (0.00 sec)



mysql> create database store_procedure_example;
Query OK, 1 row affected (0.02 sec)
mysql> use store_procedure_example;
Database changed
mysql> create table employee (id int primary key not null ,name varchar(20)not null, dept varchar (20) not null, salary int );
Query OK, 0 rows affected (0.08 sec)

mysql> desc employee;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| id     | int         | NO   | PRI | NULL    |       |
| name   | varchar(20) | NO   |     | NULL    |       |
| dept   | varchar(20) | NO   |     | NULL    |       |
| salary | int         | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> insert employee values(1,'Dmane','HR',10000);
Query OK, 1 row affected (0.01 sec)

mysql> select * from employee;
+----+---------+------+--------+
| id | name    | dept | salary |
+----+---------+------+--------+
|  1 | Dmane   | HR   |  10000 |
+----+---------+------+--------+
1 row in set (0.00 sec)


mysql> CREATE PROCEDURE GetEmployees()
    -> BEGIN
    ->     SELECT * FROM Employee;
    -> END //
Query OK, 0 rows affected (0.04 sec)

mysql>
mysql> DELIMITER ;
mysql> DELIMITER //



mysql> DELIMITER ;

mysql> CREATE PROCEDURE GetEmployee()
    -> BEGIN
    ->     SELECT * FROM Employee;
    -> END //
Query OK, 0 rows affected (0.02 sec)

mysql> CALL GetEmployee();
+----+---------+------+--------+
| id | name    | dept | salary |
+----+---------+------+--------+
|  1 | Dmane   | HR   |  10000 |
+----+---------+------+--------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> DELIMITER //
mysql>
mysql> CREATE PROCEDURE GetEmployeeByDept(
    ->     IN dept_name VARCHAR(50)
    -> )
    -> BEGIN
    ->     SELECT *
    ->     FROM Employee
    ->     WHERE Department = dept_name;
    -> END //
Query OK, 0 rows affected (0.01 sec)


mysql> DELIMITER ;

 
mysql> DELIMITER //
mysql>
mysql> CREATE PROCEDURE AddEmployee(
    ->     IN id INT,
    ->     IN name VARCHAR(50),
    ->     IN dept VARCHAR(50),
    ->     IN salary INT
    -> )
    -> BEGIN
    ->     INSERT INTO Employee(id, name, depart, salary)
    ->     VALUES(id, name, dept, salary);
    -> END //
Query OK, 0 rows affected (0.02 sec)
mysql> DELIMITER ;

mysql> DESC Employee;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| id     | int         | NO   | PRI | NULL    |       |
| name   | varchar(20) | NO   |     | NULL    |       |
| dept   | varchar(20) | NO   |     | NULL    |       |
| salary | int         | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> DELIMITER //
mysql>
mysql> CREATE PROCEDURE AddEmployee(
    ->     IN id INT,
    ->     IN name VARCHAR(50),
    ->     IN dept VARCHAR(50),
    ->     IN salary INT
    -> )
    -> BEGIN
    ->     INSERT INTO Employee(id, name, department, salary)
    ->     VALUES(id, name, dept, salary);
    -> END //

mysql> DROP PROCEDURE AddEmployee;
Query OK, 0 rows affected (0.06 sec)

mysql> DELIMITER //
mysql> CREATE PROCEDURE AddEmployee(
    ->     IN id INT,
    ->     IN name VARCHAR(50),
    ->     IN dept VARCHAR(50),
    ->     IN salary INT
    -> )
    -> BEGIN
    ->     INSERT INTO Employee(id, name, dept, salary)
    ->     VALUES(id, name, dept, salary);
    -> END //
Query OK, 0 rows affected (0.02 sec)

mysql> DELIMITER ;

mysql> CALL AddEmployee(2, 'Ansh', 'HR', 50000);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM Employee;
+-----+---------+------+--------+
| id  | name    | dept | salary |
+-----+---------+------+--------+
|   1 | Dmane   | HR   |  10000 |
| 101 | Ansh    | HR   |  50000 |
+-----+---------+------+--------+
2 rows in set (0.00 sec)
    

mysql> DELIMITER //
mysql> CREATE PROCEDURE GetEmployeeCount(OUT total INT)
    -> BEGIN
    ->     SELECT COUNT(*) INTO total
    ->     FROM Employee;
    -> END //
Query OK, 0 rows affected (0.02 sec)

mysql> DELIMITER ;
mysql> CALL GetEmployeeCount(@total);
Query OK, 1 row affected (0.02 sec)

mysql> SELECT @total;
+--------+
| @total |
+--------+
|      2 |
+--------+
1 row in set (0.00 sec)

-Dmane
