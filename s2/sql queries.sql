
SELECT S.Name, S.E_mail, D.Dep_name
FROM Student S
JOIN Department D ON S.Dep_ID = D.Dep_ID;

SELECT ST.Name AS Student, C.Name AS Course
FROM Enroll E
JOIN Student ST ON E.Student_ID = ST.ID
JOIN Course C ON E.Course_ID = C.Course_ID;

SELECT ST.Name AS Student, C.Name AS Course, A.Type, G.Marks_obtained
FROM Grades G
JOIN Student ST ON G.Student_ID = ST.ID
JOIN Course C ON G.Course_ID = C.Course_ID
JOIN Assessment A ON G.AssessmentID = A.AssessmentID
WHERE ST.ID = 1001;

SELECT I.Name AS Instructor, C.Name AS Course
FROM Course C
JOIN Instructor I ON C.Instructor_ID = I.Instructor_ID;

SELECT S.Name, C.Name AS Course, A.Percentage, A.Warning_Flag
FROM Attendance A
JOIN Student S ON A.Student_ID = S.ID
JOIN Course C ON A.Course_ID = C.Course_ID;

SELECT S.Name, C.Name AS Course, A.Percentage
FROM Attendance A
JOIN Student S ON A.Student_ID = S.ID
JOIN Course C ON A.Course_ID = C.Course_ID
WHERE A.Percentage < 75.0;

SELECT * FROM Login
WHERE Username = 'ahmed_a' AND Password = 'ahmedpass';


SELECT S.Name, S.E_mail, D.Dep_name
FROM Student S
JOIN Department D ON S.Dep_ID = D.Dep_ID;

SELECT ST.Name AS Student, C.Name AS Course
FROM Enroll E
JOIN Student ST ON E.Student_ID = ST.ID
JOIN Course C ON E.Course_ID = C.Course_ID;

SELECT ST.Name AS Student, C.Name AS Course, A.Type, G.Marks_obtained
FROM Grades G
JOIN Student ST ON G.Student_ID = ST.ID
JOIN Course C ON G.Course_ID = C.Course_ID
JOIN Assessment A ON G.AssessmentID = A.AssessmentID
WHERE ST.ID = 1001;

SELECT I.Name AS Instructor, C.Name AS Course
FROM Course C
JOIN Instructor I ON C.Instructor_ID = I.Instructor_ID;

SELECT S.Name, C.Name AS Course, A.Percentage, A.Warning_Flag
FROM Attendance A
JOIN Student S ON A.Student_ID = S.ID
JOIN Course C ON A.Course_ID = C.Course_ID;

SELECT S.Name, C.Name AS Course, A.Percentage
FROM Attendance A
JOIN Student S ON A.Student_ID = S.ID
JOIN Course C ON A.Course_ID = C.Course_ID
WHERE A.Percentage < 75.0;

SELECT * FROM Login
WHERE Username = 'ahmed_a' AND Password = 'ahmedpass';