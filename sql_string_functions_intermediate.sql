
 -- ============================================
-- USE DATABASE
-- ============================================
USE COLLEGE;

-- ============================================
-- TABLE: STUDENT INFORMATION
-- ============================================
CREATE TABLE student_information(
    roll_no INT,
    first_name VARCHAR(20),
    last_name VARCHAR(20)
);

-- INSERT DATA
INSERT INTO student_information VALUES
(1, 'Rahul', 'Rai'),
(2, 'Maya', 'Rai'),
(3, 'Neha', 'Gupta'),
(4, 'Riya', 'Singh'),
(5, 'Karan', 'Mehta'),
(6, 'Pooja', 'Yadav'),
(7, 'Arjun', 'Kumar'),
(8, 'Sneha', 'Patel'),
(9, 'Vikas', 'Chauhan'),
(10, 'Anjali', 'Mishra');

-- ============================================
-- STRING FUNCTIONS
-- ============================================

-- UPPER & LOWER
SELECT UPPER(first_name) AS upper_name FROM student_information;
SELECT LOWER(last_name) AS lower_name FROM student_information;

-- LENGTH
SELECT first_name, LENGTH(first_name) AS name_length
FROM student_information;

-- CONCAT
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM student_information;

-- SUBSTRING
SELECT SUBSTRING(first_name, 1, 3) AS short_name
FROM student_information;

-- TRIM
SELECT TRIM(last_name) AS cleaned_last_name
FROM student_information;

-- REPLACE
SELECT REPLACE(first_name, 'a', 'A') AS modified_name
FROM student_information;

-- INSTR
SELECT INSTR(first_name, 'a') AS position
FROM student_information;

-- LEFT & RIGHT
SELECT LEFT(first_name, 2) AS left_part FROM student_information;
SELECT RIGHT(first_name, 2) AS right_part FROM student_information;