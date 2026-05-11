
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

mysql> USE ecommerce;
Database changed


mysql> SELECT * From customer;
+-------------+---------------+--------+----------------+----------+------------+---------+--------+-------+---------+
| customer_id | customer_name | city   | Email          | address  | phoneno    | pincode | billno | state | country |
+-------------+---------------+--------+----------------+----------+------------+---------+--------+-------+---------+
| C1          | ansh          | mumbai | ansh@gmail.com | Sector 1 | 1234567890 | 421301  |        |       |         |
| C2          | raj           | mumbai | raj@gmail.com  | sector 2 |  987654321 | 410123  |        |       |         |
| C3          | sai           | mumbai | sai@gmail.com  | sector 3 |  852012365 | 421025  |        |       |         |
+-------------+---------------+--------+----------------+----------+------------+---------+--------+-------+---------+
3 rows in set (0.02 sec)

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
10 rows in set (0.01 sec)

mysql> UPDATE customer set phoneno ='1010101010' where customer_id = 'C1';
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * From customer;
+-------------+---------------+--------+----------------+----------+------------+---------+--------+-------+---------+
| customer_id | customer_name | city   | Email          | address  | phoneno    | pincode | billno | state | country |
+-------------+---------------+--------+----------------+----------+------------+---------+--------+-------+---------+
| C1          | ansh          | mumbai | ansh@gmail.com | Sector 1 | 1010101010 | 421301  |        |       |         |
| C2          | raj           | mumbai | raj@gmail.com  | sector 2 |  987654321 | 410123  |        |       |         |
| C3          | sai           | mumbai | sai@gmail.com  | sector 3 |  852012365 | 421025  |        |       |         |
+-------------+---------------+--------+----------------+----------+------------+---------+--------+-------+---------+
3 rows in set (0.00 sec)

mysql> desc product;
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

mysql> select * from product;
Empty set (0.02 sec)

mysql> select * from customer;
+-------------+---------------+--------+----------------+----------+------------+---------+--------+-------+---------+
| customer_id | customer_name | city   | Email          | address  | phoneno    | pincode | billno | state | country |
+-------------+---------------+--------+----------------+----------+------------+---------+--------+-------+---------+
| C1          | ansh          | mumbai | ansh@gmail.com | Sector 1 | 1010101010 | 421301  |        |       |         |
| C2          | raj           | mumbai | raj@gmail.com  | sector 2 |  987654321 | 410123  |        |       |         |
| C3          | sai           | mumbai | sai@gmail.com  | sector 3 |  852012365 | 421025  |        |       |         |
+-------------+---------------+--------+----------------+----------+------------+---------+--------+-------+---------+
3 rows in set (0.00 sec)

mysql> select * from customer where customer_name like '%an';
Empty set (0.00 sec)

mysql> select * from customer where customer_name like '%aj';
+-------------+---------------+--------+---------------+----------+-----------+---------+--------+-------+---------+
| customer_id | customer_name | city   | Email         | address  | phoneno   | pincode | billno | state | country |
+-------------+---------------+--------+---------------+----------+-----------+---------+--------+-------+---------+
| C2          | raj           | mumbai | raj@gmail.com | sector 2 | 987654321 | 410123  |        |       |         |
+-------------+---------------+--------+---------------+----------+-----------+---------+--------+-------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where customer_name like '%';
+-------------+---------------+--------+----------------+----------+------------+---------+--------+-------+---------+
| customer_id | customer_name | city   | Email          | address  | phoneno    | pincode | billno | state | country |
+-------------+---------------+--------+----------------+----------+------------+---------+--------+-------+---------+
| C1          | ansh          | mumbai | ansh@gmail.com | Sector 1 | 1010101010 | 421301  |        |       |         |
| C2          | raj           | mumbai | raj@gmail.com  | sector 2 |  987654321 | 410123  |        |       |         |
| C3          | sai           | mumbai | sai@gmail.com  | sector 3 |  852012365 | 421025  |        |       |         |
+-------------+---------------+--------+----------------+----------+------------+---------+--------+-------+---------+
3 rows in set (0.00 sec)

mysql> select * from customer where customer_name like '%a%';
+-------------+---------------+--------+----------------+----------+------------+---------+--------+-------+---------+
| customer_id | customer_name | city   | Email          | address  | phoneno    | pincode | billno | state | country |
+-------------+---------------+--------+----------------+----------+------------+---------+--------+-------+---------+
| C1          | ansh          | mumbai | ansh@gmail.com | Sector 1 | 1010101010 | 421301  |        |       |         |
| C2          | raj           | mumbai | raj@gmail.com  | sector 2 |  987654321 | 410123  |        |       |         |
| C3          | sai           | mumbai | sai@gmail.com  | sector 3 |  852012365 | 421025  |        |       |         |
+-------------+---------------+--------+----------------+----------+------------+---------+--------+-------+---------+
3 rows in set (0.00 sec)

mysql> select * from customer where customer_name like 's%';
+-------------+---------------+--------+---------------+----------+-----------+---------+--------+-------+---------+
| customer_id | customer_name | city   | Email         | address  | phoneno   | pincode | billno | state | country |
+-------------+---------------+--------+---------------+----------+-----------+---------+--------+-------+---------+
| C3          | sai           | mumbai | sai@gmail.com | sector 3 | 852012365 | 421025  |        |       |         |
+-------------+---------------+--------+---------------+----------+-----------+---------+--------+-------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where city like 'mu%';
+-------------+---------------+--------+----------------+----------+------------+---------+--------+-------+---------+
| customer_id | customer_name | city   | Email          | address  | phoneno    | pincode | billno | state | country |
+-------------+---------------+--------+----------------+----------+------------+---------+--------+-------+---------+
| C1          | ansh          | mumbai | ansh@gmail.com | Sector 1 | 1010101010 | 421301  |        |       |         |
| C2          | raj           | mumbai | raj@gmail.com  | sector 2 |  987654321 | 410123  |        |       |         |
| C3          | sai           | mumbai | sai@gmail.com  | sector 3 |  852012365 | 421025  |        |       |         |
+-------------+---------------+--------+----------------+----------+------------+---------+--------+-------+---------+
3 rows in set (0.00 sec)

mysql> select * from customer where customer_name like 'an__';
+-------------+---------------+--------+----------------+----------+------------+---------+--------+-------+---------+
| customer_id | customer_name | city   | Email          | address  | phoneno    | pincode | billno | state | country |
+-------------+---------------+--------+----------------+----------+------------+---------+--------+-------+---------+
| C1          | ansh          | mumbai | ansh@gmail.com | Sector 1 | 1010101010 | 421301  |        |       |         |
+-------------+---------------+--------+----------------+----------+------------+---------+--------+-------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where customer_name like 'an_';
Empty set (0.00 sec)

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

mysql> select * from customer;
+-------------+---------------+--------+----------------+----------+------------+---------+--------+-------+---------+
| customer_id | customer_name | city   | Email          | address  | phoneno    | pincode | billno | state | country |
+-------------+---------------+--------+----------------+----------+------------+---------+--------+-------+---------+
| C1          | ansh          | mumbai | ansh@gmail.com | Sector 1 | 1010101010 | 421301  |        |       |         |
| C2          | raj           | mumbai | raj@gmail.com  | sector 2 |  987654321 | 410123  |        |       |         |
| C3          | sai           | mumbai | sai@gmail.com  | sector 3 |  852012365 | 421025  |        |       |         |
+-------------+---------------+--------+----------------+----------+------------+---------+--------+-------+---------+
3 rows in set (0.00 sec)


mysql> ALTER TABLE customer
    -> MODIFY phoneno VARCHAR(15);
Query OK, 3 rows affected (0.14 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> desc customer;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| customer_id   | varchar(25) | NO   | PRI | NULL    |       |
| customer_name | varchar(15) | NO   |     | NULL    |       |
| city          | varchar(15) | NO   |     | NULL    |       |
| Email         | varchar(15) | NO   |     | NULL    |       |
| address       | varchar(15) | NO   |     | NULL    |       |
| phoneno       | varchar(15) | YES  |     | NULL    |       |
| pincode       | varchar(15) | NO   |     | NULL    |       |
| billno        | varchar(15) | NO   |     | NULL    |       |
| state         | varchar(15) | NO   |     | NULL    |       |
| country       | varchar(15) | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
10 rows in set (0.00 sec)

mysql> ALTER TABLE customer
    -> MODIFY Email VARCHAR(50);
Query OK, 0 rows affected (0.11 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE customer
    -> MODIFY customer_name VARCHAR(50),
    -> MODIFY city VARCHAR(50),
    -> MODIFY address VARCHAR(100),
    -> MODIFY state VARCHAR(50),
    -> MODIFY country VARCHAR(50);
Query OK, 3 rows affected (0.10 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> INSERT INTO customer
    -> (customer_id, customer_name, city, Email, address, phoneno, pincode, billno, state, country)
    -> VALUES
    -> ('C4','amit','pune','amit@gmail.com','Sector 4','9123456780','411001','B1001','Maharashtra','India'),
    -> ('C5','neha','delhi','neha@gmail.com','Sector 5','9234567810','110001','B1002','Delhi','India'),
    -> ('C6','rohit','bangalore','rohit@gmail.com','Sector 6','9345678120','560001','B1003','Karnataka','India'),
    -> ('C7','priya','chennai','priya@gmail.com','Sector 7','9456781230','600001','B1004','Tamil Nadu','India'),
    -> ('C8','karan','hyderabad','karan@gmail.com','Sector 8','9567812340','500001','B1005','Telangana','India'),
    -> ('C9','pooja','kolkata','pooja@gmail.com','Sector 9','9678123450','700001','B1006','West Bengal','India'),
    -> ('C10','vikram','jaipur','vikram@gmail.com','Sector 10','9781234560','302001','B1007','Rajasthan','India'),
    -> ('C11','sneha','ahmedabad','sneha@gmail.com','Sector 11','9892345670','380001','B1008','Gujarat','India'),
    -> ('C12','arjun','lucknow','arjun@gmail.com','Sector 12','9903456781','226001','B1009','Uttar Pradesh','India'),
    -> ('C13','kavya','chandigarh','kavya@gmail.com','Sector 13','9014567892','160017','B1010','Punjab','India');
Query OK, 10 rows affected (0.06 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> select * from customer;
+-------------+---------------+------------+------------------+-----------+------------+---------+--------+---------------+---------+
| customer_id | customer_name | city       | Email            | address   | phoneno    | pincode | billno | state         | country |
+-------------+---------------+------------+------------------+-----------+------------+---------+--------+---------------+---------+
| C1          | ansh          | mumbai     | ansh@gmail.com   | Sector 1  | 1010101010 | 421301  |        |               |         |
| C10         | vikram        | jaipur     | vikram@gmail.com | Sector 10 | 9781234560 | 302001  | B1007  | Rajasthan     | India   |
| C11         | sneha         | ahmedabad  | sneha@gmail.com  | Sector 11 | 9892345670 | 380001  | B1008  | Gujarat       | India   |
| C12         | arjun         | lucknow    | arjun@gmail.com  | Sector 12 | 9903456781 | 226001  | B1009  | Uttar Pradesh | India   |
| C13         | kavya         | chandigarh | kavya@gmail.com  | Sector 13 | 9014567892 | 160017  | B1010  | Punjab        | India   |
| C2          | raj           | mumbai     | raj@gmail.com    | sector 2  | 987654321  | 410123  |        |               |         |
| C3          | sai           | mumbai     | sai@gmail.com    | sector 3  | 852012365  | 421025  |        |               |         |
| C4          | amit          | pune       | amit@gmail.com   | Sector 4  | 9123456780 | 411001  | B1001  | Maharashtra   | India   |
| C5          | neha          | delhi      | neha@gmail.com   | Sector 5  | 9234567810 | 110001  | B1002  | Delhi         | India   |
| C6          | rohit         | bangalore  | rohit@gmail.com  | Sector 6  | 9345678120 | 560001  | B1003  | Karnataka     | India   |
| C7          | priya         | chennai    | priya@gmail.com  | Sector 7  | 9456781230 | 600001  | B1004  | Tamil Nadu    | India   |
| C8          | karan         | hyderabad  | karan@gmail.com  | Sector 8  | 9567812340 | 500001  | B1005  | Telangana     | India   |
| C9          | pooja         | kolkata    | pooja@gmail.com  | Sector 9  | 9678123450 | 700001  | B1006  | West Bengal   | India   |
+-------------+---------------+------------+------------------+-----------+------------+---------+--------+---------------+---------+
13 rows in set (0.00 sec)

mysql> select * from customer LIMIT 4;
+-------------+---------------+-----------+------------------+-----------+------------+---------+--------+---------------+---------+
| customer_id | customer_name | city      | Email            | address   | phoneno    | pincode | billno | state         | country |
+-------------+---------------+-----------+------------------+-----------+------------+---------+--------+---------------+---------+
| C1          | ansh          | mumbai    | ansh@gmail.com   | Sector 1  | 1010101010 | 421301  |        |               |         |
| C10         | vikram        | jaipur    | vikram@gmail.com | Sector 10 | 9781234560 | 302001  | B1007  | Rajasthan     | India   |
| C11         | sneha         | ahmedabad | sneha@gmail.com  | Sector 11 | 9892345670 | 380001  | B1008  | Gujarat       | India   |
| C12         | arjun         | lucknow   | arjun@gmail.com  | Sector 12 | 9903456781 | 226001  | B1009  | Uttar Pradesh | India   |
+-------------+---------------+-----------+------------------+-----------+------------+---------+--------+---------------+---------+
4 rows in set (0.00 sec)

mysql> select DISTINCT  city from customer ;
+------------+
| city       |
+------------+
| mumbai     |
| jaipur     |
| ahmedabad  |
| lucknow    |
| chandigarh |
| pune       |
| delhi      |
| bangalore  |
| chennai    |
| hyderabad  |
| kolkata    |
+------------+
11 rows in set (0.00 sec)



mysql> select * from customer where customer_name = 'arjun' or  city = 'lucknow' ;
+-------------+---------------+---------+-----------------+-----------+------------+---------+--------+---------------+---------+
| customer_id | customer_name | city    | Email           | address   | phoneno    | pincode | billno | state         | country |
+-------------+---------------+---------+-----------------+-----------+------------+---------+--------+---------------+---------+
| C12         | arjun         | lucknow | arjun@gmail.com | Sector 12 | 9903456781 | 226001  | B1009  | Uttar Pradesh | India   |
+-------------+---------------+---------+-----------------+-----------+------------+---------+--------+---------------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where customer_id between  'C2' and 'C7' ;
+-------------+---------------+-----------+-----------------+----------+------------+---------+--------+-------------+---------+
| customer_id | customer_name | city      | Email           | address  | phoneno    | pincode | billno | state       | country |
+-------------+---------------+-----------+-----------------+----------+------------+---------+--------+-------------+---------+
| C2          | raj           | mumbai    | raj@gmail.com   | sector 2 | 987654321  | 410123  |        |             |         |
| C3          | sai           | mumbai    | sai@gmail.com   | sector 3 | 852012365  | 421025  |        |             |         |
| C4          | amit          | pune      | amit@gmail.com  | Sector 4 | 9123456780 | 411001  | B1001  | Maharashtra | India   |
| C5          | neha          | delhi     | neha@gmail.com  | Sector 5 | 9234567810 | 110001  | B1002  | Delhi       | India   |
| C6          | rohit         | bangalore | rohit@gmail.com | Sector 6 | 9345678120 | 560001  | B1003  | Karnataka   | India   |
| C7          | priya         | chennai   | priya@gmail.com | Sector 7 | 9456781230 | 600001  | B1004  | Tamil Nadu  | India   |
+-------------+---------------+-----------+-----------------+----------+------------+---------+--------+-------------+---------+
6 rows in set (0.00 sec)

mysql> select * from customer where customer_id not between  'C2' and 'C7' ;
+-------------+---------------+------------+------------------+-----------+------------+---------+--------+---------------+---------+
| customer_id | customer_name | city       | Email            | address   | phoneno    | pincode | billno | state         | country |
+-------------+---------------+------------+------------------+-----------+------------+---------+--------+---------------+---------+
| C1          | ansh          | mumbai     | ansh@gmail.com   | Sector 1  | 1010101010 | 421301  |        |               |         |
| C10         | vikram        | jaipur     | vikram@gmail.com | Sector 10 | 9781234560 | 302001  | B1007  | Rajasthan     | India   |
| C11         | sneha         | ahmedabad  | sneha@gmail.com  | Sector 11 | 9892345670 | 380001  | B1008  | Gujarat       | India   |
| C12         | arjun         | lucknow    | arjun@gmail.com  | Sector 12 | 9903456781 | 226001  | B1009  | Uttar Pradesh | India   |
| C13         | kavya         | chandigarh | kavya@gmail.com  | Sector 13 | 9014567892 | 160017  | B1010  | Punjab        | India   |
| C8          | karan         | hyderabad  | karan@gmail.com  | Sector 8  | 9567812340 | 500001  | B1005  | Telangana     | India   |
| C9          | pooja         | kolkata    | pooja@gmail.com  | Sector 9  | 9678123450 | 700001  | B1006  | West Bengal   | India   |
+-------------+---------------+------------+------------------+-----------+------------+---------+--------+---------------+---------+
7 rows in set (0.00 sec)

mysql> select * from customer where customer_id =  'C2' or 'C7' ;
+-------------+---------------+--------+---------------+----------+-----------+---------+--------+-------+---------+
| customer_id | customer_name | city   | Email         | address  | phoneno   | pincode | billno | state | country |
+-------------+---------------+--------+---------------+----------+-----------+---------+--------+-------+---------+
| C2          | raj           | mumbai | raj@gmail.com | sector 2 | 987654321 | 410123  |        |       |         |
+-------------+---------------+--------+---------------+----------+-----------+---------+--------+-------+---------+
1 row in set, 1 warning (0.00 sec)

mysql> select * from customer where customer_id not between  'C2' and 'C7' ;
+-------------+---------------+------------+------------------+-----------+------------+---------+--------+---------------+---------+
| customer_id | customer_name | city       | Email            | address   | phoneno    | pincode | billno | state         | country |
+-------------+---------------+------------+------------------+-----------+------------+---------+--------+---------------+---------+
| C1          | ansh          | mumbai     | ansh@gmail.com   | Sector 1  | 1010101010 | 421301  |        |               |         |
| C10         | vikram        | jaipur     | vikram@gmail.com | Sector 10 | 9781234560 | 302001  | B1007  | Rajasthan     | India   |
| C11         | sneha         | ahmedabad  | sneha@gmail.com  | Sector 11 | 9892345670 | 380001  | B1008  | Gujarat       | India   |
| C12         | arjun         | lucknow    | arjun@gmail.com  | Sector 12 | 9903456781 | 226001  | B1009  | Uttar Pradesh | India   |
| C13         | kavya         | chandigarh | kavya@gmail.com  | Sector 13 | 9014567892 | 160017  | B1010  | Punjab        | India   |
| C8          | karan         | hyderabad  | karan@gmail.com  | Sector 8  | 9567812340 | 500001  | B1005  | Telangana     | India   |
| C9          | pooja         | kolkata    | pooja@gmail.com  | Sector 9  | 9678123450 | 700001  | B1006  | West Bengal   | India   |
+-------------+---------------+------------+------------------+-----------+------------+---------+--------+---------------+---------+
7 rows in set (0.00 sec)

mysql> select * from customer where customer_id in  ('C2','C7','C1') ;
+-------------+---------------+---------+-----------------+----------+------------+---------+--------+------------+---------+
| customer_id | customer_name | city    | Email           | address  | phoneno    | pincode | billno | state      | country |
+-------------+---------------+---------+-----------------+----------+------------+---------+--------+------------+---------+
| C1          | ansh          | mumbai  | ansh@gmail.com  | Sector 1 | 1010101010 | 421301  |        |            |         |
| C2          | raj           | mumbai  | raj@gmail.com   | sector 2 | 987654321  | 410123  |        |            |         |
| C7          | priya         | chennai | priya@gmail.com | Sector 7 | 9456781230 | 600001  | B1004  | Tamil Nadu | India   |
+-------------+---------------+---------+-----------------+----------+------------+---------+--------+------------+---------+
3 rows in set (0.00 sec)


mysql> select * from customer where customer_id not in  ('C2','C7','C1') ;
+-------------+---------------+------------+------------------+-----------+------------+---------+--------+---------------+---------+
| customer_id | customer_name | city       | Email            | address   | phoneno    | pincode | billno | state         | country |
+-------------+---------------+------------+------------------+-----------+------------+---------+--------+---------------+---------+
| C10         | vikram        | jaipur     | vikram@gmail.com | Sector 10 | 9781234560 | 302001  | B1007  | Rajasthan     | India   |
| C11         | sneha         | ahmedabad  | sneha@gmail.com  | Sector 11 | 9892345670 | 380001  | B1008  | Gujarat       | India   |
| C12         | arjun         | lucknow    | arjun@gmail.com  | Sector 12 | 9903456781 | 226001  | B1009  | Uttar Pradesh | India   |
| C13         | kavya         | chandigarh | kavya@gmail.com  | Sector 13 | 9014567892 | 160017  | B1010  | Punjab        | India   |
| C3          | sai           | mumbai     | sai@gmail.com    | sector 3  | 852012365  | 421025  |        |               |         |
| C4          | amit          | pune       | amit@gmail.com   | Sector 4  | 9123456780 | 411001  | B1001  | Maharashtra   | India   |
| C5          | neha          | delhi      | neha@gmail.com   | Sector 5  | 9234567810 | 110001  | B1002  | Delhi         | India   |
| C6          | rohit         | bangalore  | rohit@gmail.com  | Sector 6  | 9345678120 | 560001  | B1003  | Karnataka     | India   |
| C8          | karan         | hyderabad  | karan@gmail.com  | Sector 8  | 9567812340 | 500001  | B1005  | Telangana     | India   |
| C9          | pooja         | kolkata    | pooja@gmail.com  | Sector 9  | 9678123450 | 700001  | B1006  | West Bengal   | India   |
+-------------+---------------+------------+------------------+-----------+------------+---------+--------+---------------+---------+
10 rows in set (0.00 sec)

mysql> select * from customer where  state is null ;
Empty set (0.00 sec)

