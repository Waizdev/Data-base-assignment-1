-- Department
INSERT INTO Department VALUES (1, 'Computer Science');
INSERT INTO Department VALUES (2, 'Mathematics');

-- Student
INSERT INTO Student VALUES (101, 'Alice', 'alice@gmail.com', '1234567890', 'F', 1);
INSERT INTO Student VALUES (102, 'Bob', 'bob@yahoo.com', '9876543210', 'M', 2);

-- Instructor
INSERT INTO Instructor VALUES (201, 'Dr. Smith', 'smith@uni.edu', '1122334455');
INSERT INTO Instructor VALUES (202, 'Dr. John', 'john@uni.edu', '5566778899');

-- Course
INSERT INTO Course VALUES (301, 'DBMS', 3);
INSERT INTO Course VALUES (302, 'AI', 4);

-- Enroll (Student-Course)
INSERT INTO Enroll VALUES (101, 301);
INSERT INTO Enroll VALUES (102, 302);

-- Taught (Course-Instructor)
INSERT INTO Taught VALUES (301, 201);
INSERT INTO Taught VALUES (302, 202);

-- Login
INSERT INTO Login VALUES (1, 'alice101', 'pass123');
INSERT INTO Login VALUES (2, 'bob102', 'pass456');

-- Assessment
INSERT INTO Assessment VALUES (401, 'Midterm', 30, 301);
INSERT INTO Assessment VALUES (402, 'Final', 40, 301);
INSERT INTO Assessment VALUES (403, 'Project', 30, 301);

-- Grades
INSERT INTO Grades VALUES (1, 101, 301, 401, 25); -- Alice, Midterm
INSERT INTO Grades VALUES (2, 101, 301, 402, 35); -- Alice, Final
INSERT INTO Grades VALUES (3, 102, 302, 401, 20); -- Bob, Midterm

-- Attendance
INSERT INTO Attendance VALUES (501, 101, 301, 30, 27, 90.0, 'N');
INSERT INTO Attendance VALUES (502, 102, 302, 30, 20, 66.6, 'Y');
