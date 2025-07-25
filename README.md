# 📚 Database Design Project  
**Author:** Syed Muhammad Waiz Rizvi  
**Roll No:** F2023376117  
**Section:** D2  
**Subject:** DBMS  
**Instructor:** Sir Usama Amjad  

---

## 📘 Project Overview  
This project includes four comprehensive **Entity Relationship (ER) Scenarios** designed to model and normalize real-world systems into relational databases. Each scenario is structured using **ER modeling**, **3NF normalization**, **weak/multivalued entities**, **role-based relationships**, and **integrity constraints**.

---

## 📁 Scenarios  

### ✅ Scenario 1 – Library Management System  
A digital library system with borrowing, reservations, and login control.  
**Entities:** Book, Author, Member, Staff, Login, Borrowing, Reservation  
**Special Features:**  
- Multivalued Attribute: `Book → Edition`  
- Weak Entity: `Login`  
- Role-Based Staff Management  
**Relationships:** Writes, Borrows, Reserves, Manages, Has_Login  
**Normalization:** All relations are in **3NF**  

---

### ✅ Scenario 2 – University Academic System  
Manages students, instructors, assessments, grades, and attendance.  
**Entities:** Student, Department, Course, Instructor, Assessment, Grade, Attendance, Login  
**Special Features:**  
- M:N Enrollments  
- Composite Keys in Enrollment, Grades  
- Weak Entity: `Login`  
**Normalization:** All schemas follow **3NF**

---

### ✅ Scenario 3 – Hospital Management System  
Tracks patient data, doctors, admissions, records, and billing.  
**Entities:** Patient, Doctor, Staff, Department, Appointment, Room, Admission, MedicalRecord, DischargeSummary, Bill, BillItem  
**Special Features:**  
- Role-Based Staff (Nurse, Doctor, Admin, Receptionist)  
- Weak Entity: `BillItem`  
**Queries:**  
- Bill Generation by Patient  
- Top Doctors by Patient Count  

---

### ✅ Scenario 4 – E-Commerce Order System  
Models an online store handling orders, inventory, reviews, and payments.  
**Entities:** Customer, Product, Order, OrderItem, Category, Vendor, Review, Admin, Payment, Refund  
**Special Features:**  
- M:N: Orders ↔ Products  
- Review system  
- Integrity constraints: quantity > 0, ratings (1–5), refunds ≤ total  

---

## 📦 Features Used  
- ER Modeling  
- 3NF Normalization  
- Weak Entities  
- Composite Primary Keys  
- Role-Based Logic  
- SQL Queries  

---

## 🧠 Learning Outcomes  
- Analyze systems  
- Normalize schemas  
- Design ERDs  
- Write SQL queries  
- Handle advanced DB features  

---

## 📎 Submission  
**Format:** PDF + Draw.io  
**Includes:** ERDs + Schema + Queries  

---

## 📩 Contact  
**Name:** Syed Muhammad Waiz Rizvi  
**Email:** DragoXtrme666@gmail.com  
**GitHub:** [github.com/Waizdev](https://github.com/Waizdev)  

> “A well-designed database is the backbone of any reliable software system.” – *Anonymous*
