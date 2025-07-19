
SELECT S.Name, C.Name AS Course_Name
FROM Student S
JOIN Enroll E ON S.ID = E.Student_ID
JOIN Course C ON E.Course_ID = C.Course_ID
WHERE C.Name = 'DBMS';

SELECT I.Name AS Instructor, C.Name AS Course
FROM Instructor I
JOIN Taught T ON I.Instructor_ID = T.Instructor_ID
JOIN Course C ON T.Course_ID = C.Course_ID;

SELECT S.Name, C.Name AS Course, SUM(G.Marks_Obtained) AS Total_Marks
FROM Grades G
JOIN Student S ON G.Student_ID = S.ID
JOIN Course C ON G.Course_ID = C.Course_ID
GROUP BY S.Name, C.Name;

SELECT S.Name, A.Percentage
FROM Attendance A
JOIN Student S ON A.Student_ID = S.ID
WHERE A.Percentage < 75;

SELECT S.Name, L.Username
FROM Login L
JOIN Student S ON S.ID = L.User_ID;

SELECT A.Type, A.Weightage
FROM Assessment A
JOIN Course C ON A.Course_ID = C.Course_ID
WHERE C.Name = 'DBMS';

SELECT S.Name, A.Warning_Flag
FROM Student S
JOIN Attendance A ON S.ID = A.Student_ID;