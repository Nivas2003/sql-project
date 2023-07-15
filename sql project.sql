create database sqlcase2;
use sqlcase2;
CREATE TABLE students ( student_id INT PRIMARY KEY, name VARCHAR(50), date_of_birth DATE, address VARCHAR(100), contact_number VARCHAR(15));
CREATE TABLE grades (
student_id INT,
course_id INT, FOREIGN KEY (student_id) REFERENCES students (student_id),
grade FLOAT,
PRIMARY KEY (student_id, course_id),
FOREIGN KEY (course_id) REFERENCES courses (course_id)
);
CREATE TABLE enrollments (
student_id INT,
course_id INT,
enrollment_date DATE,
PRIMARY KEY (student_id, course_id),
FOREIGN KEY (student_id) REFERENCES students (student_id),
FOREIGN KEY (course_id) REFERENCES courses (course_id)
);
INSERT INTO students (student_id, name, date_of_birth, address, contact_number) VALUES (1, 'John Doe', '1995-07-15', '123 Main Street', '555-1234');
SELECT * FROM students WHERE student_id = 1;
CREATE TABLE courses (
course_id INT PRIMARY KEY, name VARCHAR(50), description VARCHAR(200), credits INT
);