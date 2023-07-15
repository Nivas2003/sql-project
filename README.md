# sql-project
Documentation: SQL Project - Student Database
Introduction:
This document provides an overview of a SQL project that involves creating a student database and performing various operations on it. The project includes the creation of tables, insertion of data, retrieval of information, and analysis of grades. The project is implemented using MySQL Workbench.

Database Creation:

1.Created a new database named "sqlcase2"
2.Selected the newly created database using the following query:
  USE sqlcase2;
3.Table Creation:
  1)Created the "students" table with the following columns:
    student_id (INT) [Primary Key]
    name (VARCHAR(50))
    date_of_birth (DATE)
    address (VARCHAR(100))
    contact_number (VARCHAR(15))
    
  2)Created the "grades" table with the following columns:
    student_id (INT)
    course_id (INT)
    grade (FLOAT)
    The "student_id" column references the "student_id" column in the "students" table. The "course_id" column references the "course_id" column in        the "courses" table. The primary key is a composite key consisting of both "student_id" and "course_id".
    
  3)Created the "enrollments" table with the following columns:
    student_id (INT)
    course_id (INT)
    enrollment_date (DATE)
    The "student_id" column references the "student_id" column in the "students" table. The "course_id" column references the "course_id" column in      the "courses" table. The primary key is a composite key consisting of both "student_id" and "course_id".
    
4.Data Insertion:

  1)Inserted a sample student record into the "students" table with the following data:
    student_id: 1
    name: John Doe
    date_of_birth: 1995-07-15
    address: 123 Main Street
    contact_number: 555-1234
  2)Inserted a sample course record into the "courses" table with the following data:
    course_id: 101
    name: Mathematics
    description: Introduction to Calculus
    credits: 3
  3)Inserted a grade record for the student in the "grades" table with the following data:
    student_id: 1
    course_id: 101
    grade: 85.5
  4)Inserted an enrollment record for the student in the "enrollments" table with the following data:
    student_id: 1
    course_id: 101
    enrollment_date: '2023-01-01'
    
5.Data Retrieval:

  1)Retrieved the student record from the "students" table where the student_id is 1.
  2)Retrieved all records from the "courses" table.
  3)Retrieved the course record from the "courses" table where the course_id is 101.
  4)Retrieved the course information from the "courses" table for a specific student (student_id = 1) using a join with the "enrollments" table.

6.Data Analysis:

  1.Calculated the average grade for a specific student (student_id = 1) from the "grades" table.
  2.Retrieved the student records from the "students" table along with the average grade for each student, ordered by average_grade in descending        order. Limited the result to the top 10 students.

The SQL project involves creating a student database with tables for students, grades, enrollments, and courses. It includes inserting sample data into the tables and performing various queries to retrieve information and analyze grades. The documentation provides a comprehensive overview of the project's implementation and can serve as a reference for future development or enhancements.
