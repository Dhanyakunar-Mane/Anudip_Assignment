/* Question:
Lab 3: 	
Create database Studentmanagementsystem contain  "Student" table with the following a columns:StudentId,FirstName,lastName
and "Course" table with the following a columns: CourseId,CourseName 
and Enrollment table with the following a columns:EnrollmentID,StudentID(Foreign key),CourseID(Foreign Key).
You want to use inner join to generate a list of all possible student-course combinations.

Answer: */



mysql> CREATE DATABASE StudentManagementSystem;
Query OK, 1 row affected (0.01 sec)

mysql> USE StudentManagementSystem;
Database changed
mysql> CREATE TABLE Student (StudentId INT PRIMARY KEY AUTO_INCREMENT, FirstName VARCHAR(30) NOT NULL, LastName VARCHAR(30) NOT NULL);
Query OK, 0 rows affected (0.04 sec)

mysql> CREATE TABLE Course (CourseId INT PRIMARY KEY AUTO_INCREMENT, CourseName VARCHAR(30) NOT NULL);
Query OK, 0 rows affected (0.04 sec)

mysql> CREATE TABLE Enrollment (EnrollmentId INT PRIMARY KEY AUTO_INCREMENT, StudentId INT, CourseId INT, FOREIGN KEY (StudentId) REFERENCES Student(StudentId), FOREIGN KEY (CourseId) REFERENCES Course(CourseId));
Query OK, 0 rows affected (0.06 sec)

mysql> INSERT INTO Student (FirstName, LastName) VALUES ('Dhanyakumar', 'Mane'), ('Ansh', 'Gupta');
Query OK, 2 rows affected (0.03 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM Student;
+-----------+-------------+----------+
| StudentId | FirstName   | LastName |
+-----------+-------------+----------+
|         1 | Dhanyakumar | Mane     |
|         2 | Ansh        | Gupta    |
+-----------+-------------+----------+
2 rows in set (0.02 sec)

mysql> INSERT INTO Course (CourseName) VALUES ('Information Technology'), ('Computer Science');
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM Course;
+----------+------------------------+
| CourseId | CourseName             |
+----------+------------------------+
|        1 | Information Technology |
|        2 | Computer Science       |
+----------+------------------------+
2 rows in set (0.00 sec)

mysql> INSERT INTO Enrollment (StudentId, CourseId) VALUES (1, 1), (1, 2), (2, 1);
Query OK, 3 rows affected (0.02 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM Enrollment;
+--------------+-----------+----------+
| EnrollmentId | StudentId | CourseId |
+--------------+-----------+----------+
|            1 |         1 |        1 |
|            2 |         1 |        2 |
|            3 |         2 |        1 |
+--------------+-----------+----------+
3 rows in set (0.00 sec)

mysql> SELECT Student.StudentId, Student.FirstName, Student.LastName, Course.CourseId, Course.CourseName
    -> FROM Student
    -> INNER JOIN Enrollment
    -> ON Student.StudentId = Enrollment.StudentId
    -> INNER JOIN Course
    -> ON Enrollment.CourseId = Course.CourseId;
+-----------+-------------+----------+----------+------------------------+
| StudentId | FirstName   | LastName | CourseId | CourseName             |
+-----------+-------------+----------+----------+------------------------+
|         2 | Ansh        | Gupta    |        1 | Information Technology |
|         1 | Dhanyakumar | Mane     |        1 | Information Technology |
|         1 | Dhanyakumar | Mane     |        2 | Computer Science       |
+-----------+-------------+----------+----------+------------------------+
3 rows in set (0.04 sec)

mysql>