
INSERT INTO Department (Dep_ID, Dep_name) VALUES
(1, 'Computer Science'),
(2, 'Electrical Engineering');

INSERT INTO Student (ID, Name, E_mail, Phone, Gender, Dep_ID) VALUES
(1001, 'Ayesha Khan', 'ayesha.khan@uni.edu', '03001234567', 'Female', 1),
(1002, 'Ahmed Ali', 'ahmed.ali@uni.edu', '03111234567', 'Male', 1),
(1003, 'Fatima Noor', 'fatima.noor@uni.edu', '03221234567', 'Female', 2);

INSERT INTO Instructor (Instructor_ID, Name, E_mail, Phone) VALUES
(201, 'Dr. Imran', 'imran.cs@uni.edu', '03331234567'),
(202, 'Ms. Sana', 'sana.ee@uni.edu', '03441234567');

INSERT INTO Course (Course_ID, Name, CreditHours, Instructor_ID) VALUES
(301, 'Data Structures', 3, 201),
(302, 'Circuit Analysis', 4, 202);

INSERT INTO Enroll (Student_ID, Course_ID) VALUES
(1001, 301),
(1002, 301),
(1003, 302);

INSERT INTO Login (User_ID, Username, Password) VALUES
(1, 'ayesha_k', 'ayesha123'),
(2, 'ahmed_a', 'ahmedpass'),
(3, 'fatima_n', 'fatima456');

INSERT INTO Assessment (AssessmentID, Course_ID, Type, Weightage) VALUES
(401, 301, 'Midterm', 30.0),
(402, 301, 'Final', 40.0),
(403, 302, 'Project', 30.0);

INSERT INTO Grades (Grade_ID, Student_ID, Course_ID, AssessmentID, Marks_obtained) VALUES
(501, 1001, 301, 401, 25.5),
(502, 1001, 301, 402, 35.0),
(503, 1002, 301, 401, 20.0),
(504, 1003, 302, 403, 28.0);

INSERT INTO Attendance (Attendance_ID, Student_ID, Course_ID, Total_class, ClassesAttended, Percentage, Warning_Flag) VALUES
(601, 1001, 301, 30, 28, 93.3, FALSE),
(602, 1002, 301, 30, 18, 60.0, TRUE),
(603, 1003, 302, 25, 23, 92.0, FALSE);