SELECT B.title, A.name AS author_name
FROM Book B
JOIN Writes W ON B.b_id = W.b_id
JOIN Author A ON W.author_id = A.author_id;

SELECT M.name AS member_name, B.title AS book_title, BR.due_date
FROM Borrowing BR
JOIN Member M ON BR.mem_id = M.mem_id
JOIN Book B ON BR.b_id = B.b_id;

SELECT M.name AS member, B.title AS book, BR.due_date
FROM Borrowing BR
JOIN Member M ON BR.mem_id = M.mem_id
JOIN Book B ON BR.b_id = B.b_id
WHERE BR.return_date IS NULL AND BR.due_date < CURRENT_DATE;

SELECT * FROM Login
WHERE username = 'ali_khan101' AND password = 'mypassword';

SELECT R.res_date, B.title, S.name AS staff_handled
FROM Reservation R
JOIN Book B ON R.b_id = B.b_id
JOIN Staff S ON R.staff_id = S.staff_id
WHERE R.mem_id = 101;

SELECT DISTINCT B.title, M.name AS reserved_by
FROM Reservation R
JOIN Member M ON R.mem_id = M.mem_id
JOIN Book B ON R.b_id = B.b_id;

SELECT M.name, SUM(BR.fine) AS total_fine
FROM Borrowing BR
JOIN Member M ON BR.mem_id = M.mem_id
GROUP BY M.name;
