/* Question:
Lab 2: Database Schema: Consider a simple database with one tables: BankAccount BankAccount
Table: ● Columns: account_id (Primary Key), account_holder_name, account_balance

 Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table. 
 Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table. 
 Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000.
 Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101. 

Submission: Create an SQL script file containing your solutions for all tasks (queries). Name the file "lab_assignmen2.sql" Provide comments above each query to indicate the task number and the query's purpose
Answer: */

mysql> CREATE DATABASE BankDB;
Query OK, 1 row affected (0.14 sec)

mysql> USE BankDB;
Database changed


mysql> CREATE Table BankAccount ( account_id INT Primary Key,account_holder_name VARCHAR(100),account_balance DECIMAL(10));
Query OK, 0 rows affected (0.04 sec)

mysql> desc BankAccount;
+---------------------+---------------+------+-----+---------+-------+
| Field               | Type          | Null | Key | Default | Extra |
+---------------------+---------------+------+-----+---------+-------+
| account_id          | int           | NO   | PRI | NULL    |       |
| account_holder_name | varchar(100)  | YES  |     | NULL    |       |
| account_balance     | decimal(10)   | YES  |     | NULL    |       |
+---------------------+---------------+------+-----+---------+-------+
3 rows in set (0.09 sec)

 Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table

mysql> INSERT into BankAccount (account_id, account_holder_name, account_balance) VALUES (101, 'Aarav Sharma', 45000.00),(102, 'Priya Patel', 28000.00),(103, 'Rahul Verma', 75000.00),(104, 'Sneha Reddy', 12000.00);
Query OK, 4 rows affected (0.03 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> SELECT * From BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | Aarav Sharma        |           45000 |
|        102 | Priya Patel         |           28000 |
|        103 | Rahul Verma         |           75000 |
|        104 | Sneha Reddy         |           12000 |
+------------+---------------------+-----------------+
4 rows in set (0.00 sec)

Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table. 

mysql> SELECT account_holder_name, account_balance FROM BankAccount;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Aarav Sharma        |           45000 |
| Priya Patel         |           28000 |
| Rahul Verma         |           75000 |
| Sneha Reddy         |           12000 |
+---------------------+-----------------+
4 rows in set (0.00 sec)

Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000.

mysql> SELECT account_holder_name, account_balance FROM BankAccount WHERE account_balance > 30000;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Aarav Sharma        |           45000 |
| Rahul Verma         |           75000 |
+---------------------+-----------------+
2 rows in set (0.01 sec)

 Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101. 

mysql> UPDATE BankAccount set account_balance = 55000 WHERE account_id = 101;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * From BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | Aarav Sharma        |           55000 |
|        102 | Priya Patel         |           28000 |
|        103 | Rahul Verma         |           75000 |
|        104 | Sneha Reddy         |           12000 |
+------------+---------------------+-----------------+
4 rows in set (0.00 sec)

mysql>--DB-DMane
