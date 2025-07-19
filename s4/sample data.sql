
INSERT INTO Customer VALUES 
(1, 'Ali Khan', 'ali@example.com', '03001234567', 'Karachi'),
(2, 'Sara Ahmed', 'sara@example.com', '03101234567', 'Lahore');

INSERT INTO Vendor VALUES 
(1, 'ABC Supplies', 'Vendor Street, Lahore'),
(2, 'XYZ Traders', 'Market Road, Karachi');

INSERT INTO Category VALUES 
(1, 'Electronics', 'Electronic items and gadgets'),
(2, 'Books', 'Educational and fiction books');

INSERT INTO Product VALUES 
(1, 'Laptop', 'Gaming Laptop', 120000, 10, 1, 1),
(2, 'Novel Book', 'Fiction Novel', 1500, 50, 2, 2),
(3, 'Headphones', 'Bluetooth Headset', 3000, 30, 1, 1);

INSERT INTO Review VALUES 
(1, 'Great product', 5, '2025-07-10', 1, 1),
(2, 'Nice quality', 4, '2025-07-12', 2, 2);

INSERT INTO Order_ VALUES 
(1001, '2025-07-01', 121500, 'Karachi', 'Shipped', 1),
(1002, '2025-07-02', 1500, 'Lahore', 'Delivered', 2);

INSERT INTO Order_Item VALUES 
(1001, 1, 1, 120000),
(1001, 3, 1, 3000),
(1002, 2, 1, 1500);

INSERT INTO Payment VALUES 
(501, 1001, 121500, '2025-07-01', 'Paid'),
(502, 1002, 1500, '2025-07-02', 'Paid');

INSERT INTO Refund VALUES 
(301, 1002, 1500, '2025-07-04', 'Product damaged');