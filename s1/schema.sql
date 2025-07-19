CREATE DATABASE s1;
USE s1;

-- Book Table
CREATE TABLE Book (
    b_id INT PRIMARY KEY,
    title VARCHAR(255),
    isbn VARCHAR(20),
    year INT,
    publisher VARCHAR(255),
    edition VARCHAR(50)
);

-- Author Table
CREATE TABLE Author (
    author_id INT PRIMARY KEY,
    name VARCHAR(255)
);

-- Writes Table (Many-to-Many Relationship)
CREATE TABLE Writes (
    author_id INT,
    b_id INT,
    PRIMARY KEY (author_id, b_id),
    FOREIGN KEY (author_id) REFERENCES Author(author_id),
    FOREIGN KEY (b_id) REFERENCES Book(b_id)
);

-- Member Table
CREATE TABLE Member (
    mem_id INT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(15),
    address TEXT
);

-- Staff Table
CREATE TABLE Staff (
    staff_id INT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(15),
    role VARCHAR(50)
);

-- Reservation Table
CREATE TABLE Reservation (
    res_id INT PRIMARY KEY,
    res_date DATE,
    mem_id INT,
    b_id INT,
    staff_id INT,
    FOREIGN KEY (mem_id) REFERENCES Member(mem_id),
    FOREIGN KEY (b_id) REFERENCES Book(b_id),
    FOREIGN KEY (staff_id) REFERENCES Staff(staff_id)
);

-- Borrowing Table
CREATE TABLE Borrowing (
    borrow_id INT PRIMARY KEY,
    borrow_date DATE,
    due_date DATE,
    return_date DATE,
    fine DECIMAL(10, 2),
    mem_id INT,
    b_id INT,
    FOREIGN KEY (mem_id) REFERENCES Member(mem_id),
    FOREIGN KEY (b_id) REFERENCES Book(b_id)
);

-- Login Table
CREATE TABLE Login (
    user_id INT PRIMARY KEY,
    username VARCHAR(50) UNIQUE,
    password VARCHAR(255),
    role VARCHAR(50)
);




