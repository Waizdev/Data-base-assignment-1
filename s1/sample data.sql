INSERT INTO Book (b_id, title, isbn, year, publisher, edition) VALUES
(1, 'Artificial Intelligence', '9780136042594', 2020, 'Pearson', '3rd'),
(2, 'Database Systems', '9780321204480', 2019, 'McGraw Hill', '2nd'),
(3, 'Computer Networks', '9780132126953', 2018, 'Addison-Wesley', '5th');

INSERT INTO Author (author_id, name) VALUES
(1, 'Stuart Russell'),
(2, 'C.J. Date'),
(3, 'Andrew Tanenbaum');

INSERT INTO Writes (author_id, b_id) VALUES
(1, 1),
(2, 2),
(3, 3);

INSERT INTO Member (mem_id, name, email, phone, address) VALUES
(101, 'Ali Khan', 'ali.khan@gmail.com', '03001234567', 'Lahore'),
(102, 'Sara Ahmed', 'sara.a@gmail.com', '03111234567', 'Karachi');

INSERT INTO Staff (staff_id, name, email, phone, role) VALUES
(201, 'Mr. Imran', 'imran.staff@library.edu.pk', '03211234567', 'Librarian'),
(202, 'Ms. Fatima', 'fatima@library.edu.pk', '03011230000', 'Assistant');

INSERT INTO Reservation (res_id, res_date, mem_id, b_id, staff_id) VALUES
(301, '2025-07-15', 101, 1, 201),
(302, '2025-07-16', 102, 2, 202);

INSERT INTO Borrowing (borrow_id, borrow_date, due_date, return_date, fine, mem_id, b_id) VALUES
(401, '2025-07-01', '2025-07-10', '2025-07-12', 100.00, 101, 1),
(402, '2025-07-05', '2025-07-15', NULL, 0.00, 102, 2);

INSERT INTO Login (user_id, username, password, role) VALUES
(1, 'admin_lib', 'pass123', 'admin'),
(2, 'ali_khan101', 'mypassword', 'member');