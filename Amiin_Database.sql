CREATE TABLE Classes ( 
Class_id NUMBER GENERATED AS IDENTITY PRIMARY KEY, 
Class_name varchar2(50) NOT NULL, 
Room_number varchar2(50) NOT NULL
);

CREATE TABLE Students ( 
Student_id number generated as identity primary key, 
Student_name varchar2(100) NOT NULL, 
Gender varchar2(50) not null, 
phone varchar2(50) not null, 
enrollment_date date not null, 
Class_id number references Classes(Class_id)
); 


CREATE TABLE Courses ( 
Course_id number generated as identity primary key, 
Course_name varchar2(50) not null, 
credit_hourse number(2)
); 

CREATE TABLE Grades ( 
Grade_id number generated as identity primary key, 
Student_id number references Students(Student_id), 
Course_id number references Courses(Course_id),
Score number(5,2) 
);



-- A. CLASSES (4 Classes)
INSERT INTO Classes (Class_name, Room_number) VALUES ('Form 1-A', 'Room 101');
INSERT INTO Classes (Class_name, Room_number) VALUES ('Form 1-B', 'Room 102');
INSERT INTO Classes (Class_name, Room_number) VALUES ('Form 2-A', 'Room 201');
INSERT INTO Classes (Class_name, Room_number) VALUES ('Form 2-B', 'Room 202');

-- B. COURSES (5 Courses)
INSERT INTO Courses (Course_name, Credit_hours) VALUES ('Oracle PL/SQL Database', 4);
INSERT INTO Courses (Course_name, Credit_hours) VALUES ('Mathematics and Algebra', 3);
INSERT INTO Courses (Course_name, Credit_hours) VALUES ('Data Communication and Networks', 3);
INSERT INTO Courses (Course_name, Credit_hours) VALUES ('English Communication', 2);
INSERT INTO Courses (Course_name, Credit_hours) VALUES ('Islamic Studies', 2);

-- C. STUDENTS (40 Students)
INSERT INTO Students (Student_name, Gender, Phone, Enrollment_date, Class_id) VALUES ('Amiin Mohamud', 'Male', '0907000001', DATE '2026-01-10', 1);
INSERT INTO Students (Student_name, Gender, Phone, Enrollment_date, Class_id) VALUES ('Farhiya Ali', 'Female', '0907000002', DATE '2026-01-10', 1);
INSERT INTO Students (Student_name, Gender, Phone, Enrollment_date, Class_id) VALUES ('Hassan Ahmed', 'Male', '0907000003', DATE '2026-01-11', 1);
INSERT INTO Students (Student_name, Gender, Phone, Enrollment_date, Class_id) VALUES ('Khadra Jama', 'Female', '0907000004', DATE '2026-01-11', 1);
INSERT INTO Students (Student_name, Gender, Phone, Enrollment_date, Class_id) VALUES ('Abdirahman Said', 'Male', '0907000005', DATE '2026-01-12', 1);
INSERT INTO Students (Student_name, Gender, Phone, Enrollment_date, Class_id) VALUES ('Muna Ibrahim', 'Female', '0907000006', DATE '2026-01-12', 1);
INSERT INTO Students (Student_name, Gender, Phone, Enrollment_date, Class_id) VALUES ('Bilal Osman', 'Male', '0907000007', DATE '2026-01-13', 1);
INSERT INTO Students (Student_name, Gender, Phone, Enrollment_date, Class_id) VALUES ('Nasteho Hussein', 'Female', '0907000008', DATE '2026-01-13', 1);
INSERT INTO Students (Student_name, Gender, Phone, Enrollment_date, Class_id) VALUES ('Hamze Khalid', 'Male', '0907000009', DATE '2026-01-14', 1);
INSERT INTO Students (Student_name, Gender, Phone, Enrollment_date, Class_id) VALUES ('Sumaya Yusuf', 'Female', '0907000010', DATE '2026-01-14', 1);
INSERT INTO Students (Student_name, Gender, Phone, Enrollment_date, Class_id) VALUES ('Mohamed Abdullahi', 'Male', '0907000011', DATE '2026-01-15', 2);
INSERT INTO Students (Student_name, Gender, Phone, Enrollment_date, Class_id) VALUES ('Aisha Farah', 'Female', '0907000012', DATE '2026-01-15', 2);
INSERT INTO Students (Student_name, Gender, Phone, Enrollment_date, Class_id) VALUES ('Yasin Warsame', 'Male', '0907000013', DATE '2026-01-16', 2);
INSERT INTO Students (Student_name, Gender, Phone, Enrollment_date, Class_id) VALUES ('Zahra Nur', 'Female', '0907000014', DATE '2026-01-16', 2);
INSERT INTO Students (Student_name, Gender, Phone, Enrollment_date, Class_id) VALUES ('Khalid Abdi', 'Male', '0907000015', DATE '2026-01-17', 2);
INSERT INTO Students (Student_name, Gender, Phone, Enrollment_date, Class_id) VALUES ('Hodman Mohamed', 'Female', '0907000016', DATE '2026-01-17', 2);
INSERT INTO Students (Student_name, Gender, Phone, Enrollment_date, Class_id) VALUES ('Omar Hassan', 'Male', '0907000017', DATE '2026-01-18', 2);
INSERT INTO Students (Student_name, Gender, Phone, Enrollment_date, Class_id) VALUES ('Fartun Dahir', 'Female', '0907000018', DATE '2026-01-18', 2);
INSERT INTO Students (Student_name, Gender, Phone, Enrollment_date, Class_id) VALUES ('Saeed Isse', 'Male', '0907000019', DATE '2026-01-19', 2);
INSERT INTO Students (Student_name, Gender, Phone, Enrollment_date, Class_id) VALUES ('Safia Aden', 'Female', '0907000020', DATE '2026-01-19', 2);
INSERT INTO Students (Student_name, Gender, Phone, Enrollment_date, Class_id) VALUES ('Mustafa Gedi', 'Male', '0907000021', DATE '2026-01-20', 3);
INSERT INTO Students (Student_name, Gender, Phone, Enrollment_date, Class_id) VALUES ('Layla Shirwa', 'Female', '0907000022', DATE '2026-01-20', 3);
INSERT INTO Students (Student_name, Gender, Phone, Enrollment_date, Class_id) VALUES ('Ali Qasim', 'Male', '0907000023', DATE '2026-01-21', 3);
INSERT INTO Students (Student_name, Gender, Phone, Enrollment_date, Class_id) VALUES ('Amina Barre', 'Female', '0907000024', DATE '2026-01-21', 3);
INSERT INTO Students (Student_name, Gender, Phone, Enrollment_date, Class_id) VALUES ('Zakaria Elmi', 'Male', '0907000025', DATE '2026-01-22', 3);
INSERT INTO Students (Student_name, Gender, Phone, Enrollment_date, Class_id) VALUES ('Hibo Jama', 'Female', '0907000026', DATE '2026-01-22', 3);
INSERT INTO Students (Student_name, Gender, Phone, Enrollment_date, Class_id) VALUES ('Mahad Duale', 'Male', '0907000027', DATE '2026-01-23', 3);
INSERT INTO Students (Student_name, Gender, Phone, Enrollment_date, Class_id) VALUES ('Ikran Hashi', 'Female', '0907000028', DATE '2026-01-23', 3);
INSERT INTO Students (Student_name, Gender, Phone, Enrollment_date, Class_id) VALUES ('Anas Mahamud', 'Male', '0907000029', DATE '2026-01-24', 3);
INSERT INTO Students (Student_name, Gender, Phone, Enrollment_date, Class_id) VALUES ('Hanad Rage', 'Male', '0907000030', DATE '2026-01-24', 3);
INSERT INTO Students (Student_name, Gender, Phone, Enrollment_date, Class_id) VALUES ('Faisal Warsame', 'Male', '0907000031', DATE '2026-01-25', 4);
INSERT INTO Students (Student_name, Gender, Phone, Enrollment_date, Class_id) VALUES ('Asma Garane', 'Female', '0907000032', DATE '2026-01-25', 4);
INSERT INTO Students (Student_name, Gender, Phone, Enrollment_date, Class_id) VALUES ('Jabir Nur', 'Male', '0907000033', DATE '2026-01-26', 4);
INSERT INTO Students (Student_name, Gender, Phone, Enrollment_date, Class_id) VALUES ('Ruqiya Liban', 'Female', '0907000034', DATE '2026-01-26', 4);
INSERT INTO Students (Student_name, Gender, Phone, Enrollment_date, Class_id) VALUES ('Tariq Muse', 'Male', '0907000035', DATE '2026-01-27', 4);
INSERT INTO Students (Student_name, Gender, Phone, Enrollment_date, Class_id) VALUES ('Zamzam Osman', 'Female', '0907000036', DATE '2026-01-27', 4);
INSERT INTO Students (Student_name, Gender, Phone, Enrollment_date, Class_id) VALUES ('Nuh Keynan', 'Male', '0907000037', DATE '2026-01-28', 4);
INSERT INTO Students (Student_name, Gender, Phone, Enrollment_date, Class_id) VALUES ('Ubah Geedi', 'Female', '0907000038', DATE '2026-01-28', 4);
INSERT INTO Students (Student_name, Gender, Phone, Enrollment_date, Class_id) VALUES ('Yahya Guled', 'Male', '0907000039', DATE '2026-01-29', 4);
INSERT INTO Students (Student_name, Gender, Phone, Enrollment_date, Class_id) VALUES ('Lul Warsame', 'Female', '0907000040', DATE '2026-01-29', 4);

-- D. GRADES (Sample Scores for Students)
INSERT INTO Grades (Student_id, Course_id, Score) VALUES (1, 1, 98.50);
INSERT INTO Grades (Student_id, Course_id, Score) VALUES (1, 2, 89.00);
INSERT INTO Grades (Student_id, Course_id, Score) VALUES (2, 1, 92.00);
INSERT INTO Grades (Student_id, Course_id, Score) VALUES (3, 1, 75.50);
INSERT INTO Grades (Student_id, Course_id, Score) VALUES (4, 3, 88.00);
INSERT INTO Grades (Student_id, Course_id, Score) VALUES (5, 2, 91.25);


CREATE USER C##Teacher_Mohamed IDENTIFIED BY "mohamed9094" 

GRANT CREATE SESSION TO C##Teacher_Mohamed

GRANT INSERT ON SYSTEM.Students TO C##Teacher_Mohamed


SELECT * FROM Students 

SELECT  * FROM Courses

UPDATE Courses 
SET COURSE_NAME = 'Data Analayst' 
WHERE COURSE_ID = 5

CREATE  OR REPLACE PROCEDURE  
AS 
BEGIN 
        DBMS_OUTPUT.PUT_LINE('Soo dhawaw Injineer Amiin! Procedure-kii ugu horeeyay waa shaqeeyay.');
      
      COMMIT  
END;

EXEC Hello_Student

SET SERVEROUTPUT ON;

SELE

























