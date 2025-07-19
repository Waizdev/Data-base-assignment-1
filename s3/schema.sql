-- Patient
CREATE TABLE Patient (
    p_id INT PRIMARY KEY,
    name VARCHAR(255),
    gender VARCHAR(10),
    DOB DATE,
    address TEXT,
    contact VARCHAR(20)
);

-- Doctor
CREATE TABLE Doctor (
    doc_id INT PRIMARY KEY,
    name VARCHAR(255),
    specialization VARCHAR(100),
    contact VARCHAR(20)
);

-- Department
CREATE TABLE Department (
    dep_id INT PRIMARY KEY,
    dep_name VARCHAR(100)
);

-- Staff
CREATE TABLE Staff (
    staff_id INT PRIMARY KEY,
    name VARCHAR(255),
    role VARCHAR(50),
    contact VARCHAR(20),
    dep_id INT,
    FOREIGN KEY (dep_id) REFERENCES Department(dep_id)
);

-- Appointment
CREATE TABLE Appointment (
    app_id INT PRIMARY KEY,
    p_id INT,
    doc_id INT,
    date DATE,
    time TIME,
    purpose TEXT,
    FOREIGN KEY (p_id) REFERENCES Patient(p_id),
    FOREIGN KEY (doc_id) REFERENCES Doctor(doc_id)
);

-- Medical Record
CREATE TABLE Medical_Record (
    rec_id INT PRIMARY KEY,
    p_id INT,
    diagnosis TEXT,
    procedure TEXT,
    prescription TEXT,
    date DATE,
    FOREIGN KEY (p_id) REFERENCES Patient(p_id)
);

-- Room
CREATE TABLE Room (
    room_id INT PRIMARY KEY,
    room_type VARCHAR(50),
    chargesPerDay DECIMAL(10, 2)
);

-- Admission
CREATE TABLE Admission (
    add_id INT PRIMARY KEY,
    p_id INT,
    room_id INT,
    admit_date DATE,
    discharge_date DATE,
    FOREIGN KEY (p_id) REFERENCES Patient(p_id),
    FOREIGN KEY (room_id) REFERENCES Room(room_id)
);

-- Bill
CREATE TABLE Bill (
    bill_id INT PRIMARY KEY,
    p_id INT,
    bill_date DATE,
    total_amt DECIMAL(10, 2),
    FOREIGN KEY (p_id) REFERENCES Patient(p_id)
);

-- BillItems
CREATE TABLE BillItems (
    billitem_id INT PRIMARY KEY,
    bill_id INT,
    item_type VARCHAR(100),
    cost DECIMAL(10, 2),
    doc_id INT,
    FOREIGN KEY (bill_id) REFERENCES Bill(bill_id),
    FOREIGN KEY (doc_id) REFERENCES Doctor(doc_id)
);

-- Discharge Summary
CREATE TABLE Discharge_Summary (
    summary_id INT PRIMARY KEY,
    add_id INT,
    doc_id INT,
    diagnosis TEXT,
    prcedure TEXT,
    follow_up TEXT,
    FOREIGN KEY (add_id) REFERENCES Admission(add_id),
    FOREIGN KEY (doc_id) REFERENCES Doctor(doc_id)
);
