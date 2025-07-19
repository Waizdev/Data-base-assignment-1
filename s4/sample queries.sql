
SELECT o.Order_ID, o.Order_date, o.Total_amount, o.Status
FROM Order_ o
JOIN Customer c ON o.Customer_ID = c.Customer_ID
WHERE c.Name = 'Ali Khan';

SELECT oi.Order_ID, p.Name AS Product, oi.Quantity, oi.Price_at_order
FROM Order_Item oi
JOIN Product p ON oi.Product_ID = p.Product_ID
WHERE oi.Order_ID = 1001;

SELECT SUM(Payment_amount) AS Total_Revenue
FROM Payment
WHERE Status = 'Paid';

SELECT c.Name, SUM(r.Amount) AS Total_Refunded
FROM Refund r
JOIN Order_ o ON r.Order_ID = o.Order_ID
JOIN Customer c ON o.Customer_ID = c.Customer_ID
WHERE c.Name = 'Sara Ahmed'
GROUP BY c.Name;

SELECT p.Name, AVG(r.Rating) AS Average_Rating
FROM Review r
JOIN Product p ON r.Product_ID = p.Product_ID
GROUP BY p.Name;

SELECT Name, Stock_level
FROM Product
ORDER BY Stock_level ASC;