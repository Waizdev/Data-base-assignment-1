-- Department Table
CREATE TABLE Department (
    Dep_ID INT PRIMARY KEY,
    Dep_name VARCHAR(255)
);

-- Student Table
CREATE TABLE Student (
    ID INT PRIMARY KEY,
    Name VARCHAR(255),
    E_mail VARCHAR(255),
    Phone VARCHAR(15),
    Gender VARCHAR(10),
    Dep_ID INT,
    FOREIGN KEY (Dep_ID) REFERENCES Department(Dep_ID)
);

-- Instructor Table
CREATE TABLE Instructor (
    Instructor_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    E_mail VARCHAR(255),
    Phone VARCHAR(15)
);

-- Course Table
CREATE TABLE Course (
    Course_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    CreditHours INT,
    Instructor_ID INT,
    FOREIGN KEY (Instructor_ID) REFERENCES Instructor(Instructor_ID)
);

-- Enroll (Many-to-Many)
CREATE TABLE Enroll (
    Student_ID INT,
    Course_ID INT,
    PRIMARY KEY (Student_ID, Course_ID),
    FOREIGN KEY (Student_ID) REFERENCES Student(ID),
    FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID)
);

-- Login Table
CREATE TABLE Login (
    User_ID INT PRIMARY KEY,
    Username VARCHAR(50) UNIQUE,
    Password VARCHAR(255)
);

-- Assessment Table
CREATE TABLE Assessment (
    AssessmentID INT PRIMARY KEY,
    Course_ID INT,
    Type VARCHAR(50),
    Weightage DECIMAL(5,2),
    FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID)
);

-- Grades Table
CREATE TABLE Grades (
    Grade_ID INT PRIMARY KEY,
    Student_ID INT,
    Course_ID INT,
    AssessmentID INT,
    Marks_obtained DECIMAL(5,2),
    FOREIGN KEY (Student_ID) REFERENCES Student(ID),
    FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID),
    FOREIGN KEY (AssessmentID) REFERENCES Assessment(AssessmentID)
);

-- Attendance Table
CREATE TABLE Attendance (
    Attendance_ID INT PRIMARY KEY,
    Student_ID INT,
    Course_ID INT,
    Total_class INT,
    ClassesAttended INT,
    Percentage DECIMAL(5,2),
    Warning_Flag BOOLEAN,
    FOREIGN KEY (Student_ID) REFERENCES Student(ID),
    FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID)
);
