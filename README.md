# 📚 Database Design Project

> Author: **Syed Muhammad Waiz Rizvi**  
> Roll No: **F2023376117**  
> Section: **D2**  
> Subject: **DBMS**  
> Instructor: **Sir Usama Amjad**

---

## 📘 Project Overview

This project includes four comprehensive **Entity Relationship (ER) Scenarios** designed to model and normalize real-world systems into relational databases. Each scenario is designed using best practices of **ER modeling**, **3NF normalization**, **weak and multivalued entities**, **role-based relationships**, and **integrity constraints**.

---

## 📁 Scenarios

### ✅ **Scenario 1 – Library Management System**

A digital library system with borrowing, reservations, and user login control.

- **Entities**: Book, Author, Member, Staff, Login, Borrowing, Reservation
- **Special Features**:
  - Multivalued Attribute: `Book → Edition`
  - Weak Entity: `Login`
  - Role-Based Staff Management
- **Relationships**: Writes, Borrows, Reserves, Manages, Has_Login
- **Normalization**: All relations are in **3NF**
- **Keys**:
  - PKs: BookID, AuthorID, etc.
  - FKs: Linked to member, staff, books

---

### ✅ **Scenario 2 – University Academic System**

Manages students, instructors, course assessments, grades, and attendance.

- **Entities**: Student, Department, Course, Instructor, Assessment, Grade, Attendance, Login
- **Special Features**:
  - M:N Enrollments, Course Instructors
  - Composite Keys in Enrollment, Grades
  - Weak Entity: Login
- **Relationships**: Enrolls, Teaches, Receives Grades, Attendance, Belongs to Department
- **Normalization**: All schemas follow **3NF**

---

### ✅ **Scenario 3 – Hospital Management System**

Tracks patient data, doctors, admissions, medical records, and billing.

- **Entities**: Patient, Doctor, Staff, Department, Appointment, Room, Admission, MedicalRecord, DischargeSummary, Bill, BillItem
- **Special Features**:
  - Role-Based Staff (Nurse, Doctor, Admin, Receptionist)
  - Weak Entity: `BillItem`
  - Composite Services & Billing
- **Queries Included**:
  - Bill Generation by Patient
  - Top Doctors by Patient Count

---

### ✅ **Scenario 4 – E-Commerce Order System**

Models an online retail system handling orders, inventory, reviews, and payments.

- **Entities**: Customer, Product, Order, OrderItem, Category, Vendor, Review, Admin, Payment, Refund
- **Special Features**:
  - M:N: Orders ↔ Products (OrderItem)
  - Customer ↔ Product Reviews
  - Rich Integrity Constraints
- **Constraints**:
  - Positive Quantity, Valid Ratings (1–5), Non-negative Stock
  - Refunds must not exceed Order Total

---

## 📦 Database Features Used

- Entity-Relationship Modeling
- 3NF Normalization
- Weak Entities & Multivalued Attributes
- Composite Primary Keys
- Role-Based Access Modeling
- Foreign Key Constraints
- Integrity & Domain Constraints
- Complex SQL Queries

---

## 🧠 Learning Outcomes

- Analyzing real-world systems and modeling them efficiently
- Applying normalization principles (up to 3NF)
- Using ERDs for better schema design
- Writing complex SQL queries for reporting and analytics
- Handling advanced database features like weak entities, multivalued attributes, and role-based logic

---

## 📎 Submission

- Format: PDF / Draw.io diagrams
- Included: ERD + Normalized Schema + SQL Queries

---

## 📩 Contact

If you have any questions or suggestions, feel free to reach out to:

**Syed Muhammad Waiz Rizvi**  
Email: _DragoXtrme666@gmail.com
GitHub: [github.com/Waizdev](https://github.com/Waizdev)

---

> “A well-designed database is the backbone of any reliable software system.” – *Anonymous*

