-- ============================================
-- DATABASE CREATION
-- ============================================
CREATE DATABASE COLLEGE;
USE COLLEGE;

-- ============================================
-- TABLE: STUDENTS
-- ============================================
CREATE TABLE students(
    roll_no INT,
    name VARCHAR(20),
    class VARCHAR(20),
    year INT
);

-- INSERT DATA INTO STUDENTS
INSERT INTO students VALUES
(1,'Maya','BCA',3),
(2,'Rahul','HM',3),
(3,'Pooja','B.ED',1),
(4,'Abhi','BA',2),
(5,'Kavita','BCA',3),
(6,'Kavita','BA',2),
(7,'Nandani','B.ED',1),
(8,'Shruti','BCA',3),
(9,'Ravi','HM',3),
(10,'KumKum','HM',3);

-- ============================================
-- TABLE: STUDENT PERFORMANCE
-- ============================================
CREATE TABLE studentsperformance(
    roll_no INT,
    marks_sub1 INT,
    marks_sub2 INT,
    marks_sub3 INT,
    marks_sub4 INT,
    marks_sub5 INT,
    total INT,
    result VARCHAR(10)
);

-- INSERT DATA INTO STUDENT PERFORMANCE
INSERT INTO studentsperformance VALUES
(1, 55, 60, 70, 65, 80, 330, 'PASS'),
(2, 35, 50, 60, 70, 80, 295, 'FAIL'),
(3, 90, 85, 88, 92, 95, 450, 'PASS'),
(4, 40, 42, 38, 45, 50, 215, 'FAIL'),
(5, 60, 65, 70, 75, 80, 350, 'PASS'),
(6, 20, 30, 25, 40, 35, 150, 'FAIL'),
(7, 78, 82, 85, 80, 79, 404, 'PASS'),
(8, 50, 55, 60, 65, 30, 260, 'FAIL'),
(9, 66, 70, 72, 68, 74, 350, 'PASS'),
(10, 39, 45, 50, 55, 60, 249, 'FAIL');

-- ============================================
-- JOINS
-- ============================================

-- INNER JOIN
SELECT s.name, sp.result
FROM students s
INNER JOIN studentsperformance sp
ON s.roll_no = sp.roll_no;

-- LEFT JOIN
SELECT s.name, sp.result
FROM students s
LEFT JOIN studentsperformance sp
ON s.roll_no = sp.roll_no;

-- RIGHT JOIN
SELECT s.name, sp.result
FROM students s
RIGHT JOIN studentsperformance sp
ON s.roll_no = sp.roll_no;

-- ============================================
-- SELF JOIN (Student - Mentor Relationship)
-- ============================================

ALTER TABLE students ADD mentor_id INT;

UPDATE students SET mentor_id = NULL WHERE roll_no = 1;
UPDATE students SET mentor_id = 1 WHERE roll_no = 2;
UPDATE students SET mentor_id = 1 WHERE roll_no = 3;
UPDATE students SET mentor_id = 2 WHERE roll_no = 4;
UPDATE students SET mentor_id = 2 WHERE roll_no = 5;
UPDATE students SET mentor_id = 3 WHERE roll_no = 6;
UPDATE students SET mentor_id = 3 WHERE roll_no = 7;
UPDATE students SET mentor_id = 4 WHERE roll_no = 8;
UPDATE students SET mentor_id = 5 WHERE roll_no = 9;
UPDATE students SET mentor_id = 6 WHERE roll_no = 10;

SELECT s.name AS student, m.name AS mentor
FROM students s
LEFT JOIN students m
ON s.mentor_id = m.roll_no;