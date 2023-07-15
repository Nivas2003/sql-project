# SQL Project - Student Database

This project involves the creation of a student database and performing various operations on it. The project includes the creation of tables, insertion of data, retrieval of information, and analysis of grades. It is implemented using MySQL Workbench.

## Database Creation

1. Create a new database named "sqlcase2".

2. Select the newly created database using the following query: `USE sqlcase2;`

### Table Creation

1. Create the "students" table with the following columns:
   - student_id (INT) [Primary Key]
   - name (VARCHAR(50))
   - date_of_birth (DATE)
   - address (VARCHAR(100))
   - contact_number (VARCHAR(15))

   ```
   CREATE TABLE students (
       student_id INT PRIMARY KEY,
       name VARCHAR(50),
       date_of_birth DATE,
       address VARCHAR(100),
       contact_number VARCHAR(15)
   );
   ```

2. Create the "grades" table with the following columns:
   - student_id (INT)
   - course_id (INT)
   - grade (FLOAT)

   The "student_id" column references the "student_id" column in the "students" table. The "course_id" column references the "course_id" column in the "courses" table. The primary key is a composite key consisting of both "student_id" and "course_id".

   ```
   CREATE TABLE grades (
       student_id INT,
       course_id INT,
       grade FLOAT,
       PRIMARY KEY (student_id, course_id),
       FOREIGN KEY (student_id) REFERENCES students (student_id),
       FOREIGN KEY (course_id) REFERENCES courses (course_id)
   );
   ```

3. Create the "enrollments" table with the following columns:
   - student_id (INT)
   - course_id (INT)
   - enrollment_date (DATE)

   The "student_id" column references the "student_id" column in the "students" table. The "course_id" column references the "course_id" column in the "courses" table. The primary key is a composite key consisting of both "student_id" and "course_id".

   ```
   CREATE TABLE enrollments (
       student_id INT,
       course_id INT,
       enrollment_date DATE,
       PRIMARY KEY (student_id, course_id),
       FOREIGN KEY (student_id) REFERENCES students (student_id),
       FOREIGN KEY (course_id) REFERENCES courses (course_id)
   );
   ```

## Data Insertion

1. Insert a sample student record into the "students" table with the following data:
   - student_id: 1
   - name: John Doe
   - date_of_birth: 1995-07-15
   - address: 123 Main Street
   - contact_number: 555-1234

   ```
   INSERT INTO students (student_id, name, date_of_birth, address, contact_number)
   VALUES (1, 'John Doe', '1995-07-15', '123 Main Street', '555-1234');
   ```

2. Insert a sample course record into the "courses" table with the following data:
   - course_id: 101
   - name: Mathematics
   - description: Introduction to Calculus
   - credits: 3

   ```
   INSERT INTO courses (course_id, name, description, credits)
   VALUES (101, 'Mathematics', 'Introduction to Calculus', 3);
   ```

3. Insert a grade record for the student in the "grades" table with the following data:
   - student_id: 1
   - course_id: 101
   - grade: 85.5

   ```
   INSERT INTO grades (student_id, course_id, grade)
   VALUES (1, 101, 85.5);
   ```

4. Insert an enrollment record for the student in the "enrollments" table with the following data:
   - student_id: 1
   - course_id: 101
   - enrollment_date: '2023-01-01'

   ```
   INSERT INTO enrollments (student_id, course_id, enrollment_date)
   VALUES (1, 101, '2023-01-01');
   ```

## Data Retrieval

1. Retrieve the student record from the "students" table where the student_id is 1.

   ```
   SELECT * FROM students WHERE student_id = 1;
   ```

2. Retrieve all records from the "courses" table.

   ```
   SELECT * FROM courses;
   ```

3. Retrieve the course record from the "courses" table where the course_id is 101.

   ```
   SELECT * FROM courses WHERE course_id = 101;
   ```

4. Retrieve the course information from the "courses" table for a specific student (student_id = 1) using a join with the "enrollments" table.

   ```
   SELECT courses.* FROM courses
   JOIN enrollments ON courses.course_id = enrollments.course_id
   WHERE enrollments.student_id = 1;
   ```

## Data Analysis

1. Calculate the average grade for a specific student (student_id = 1) from the "grades" table.

   ```
   SELECT AVG(grade) FROM grades WHERE student_id = 1;
   ```

2. Retrieve the student records from the "students" table along with the average grade for each student, ordered by average_grade in descending order. Limit the result to the top 10 students.

   ```
   SELECT students.*, AVG(grades.grade) AS average_grade
   FROM students
   JOIN grades ON students.student_id = grades.student_id
   GROUP BY students.student_id
   ORDER BY average_grade DESC
   LIMIT 10;
   ```

---

This SQL project involves the creation of a student database, data insertion, retrieval, and analysis. It provides a foundation for managing student information, grades, and enrollments. The documentation can serve as a reference for future development or enhancements.
