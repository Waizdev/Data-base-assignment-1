
CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(20),
    Address TEXT
);

CREATE TABLE Vendor (
    Vendor_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Contact_Address TEXT
);

CREATE TABLE Category (
    Category_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Description TEXT
);

CREATE TABLE Product (
    Product_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Description TEXT,
    Price DECIMAL(10, 2),
    Stock_level INT,
    Vendor_ID INT,
    Category_ID INT,
    FOREIGN KEY (Vendor_ID) REFERENCES Vendor(Vendor_ID),
    FOREIGN KEY (Category_ID) REFERENCES Category(Category_ID)
);

CREATE TABLE Review (
    Review_ID INT PRIMARY KEY,
    Comment TEXT,
    Rating INT CHECK (Rating BETWEEN 1 AND 5),
    Receive_date DATE,
    Customer_ID INT,
    Product_ID INT,
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);

CREATE TABLE Order_ (
    Order_ID INT PRIMARY KEY,
    Order_date DATE,
    Total_amount DECIMAL(10, 2),
    ShippingAddress TEXT,
    Status VARCHAR(50),
    Customer_ID INT,
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);

CREATE TABLE Order_Item (
    Order_ID INT,
    Product_ID INT,
    Quantity INT,
    Price_at_order DECIMAL(10, 2),
    PRIMARY KEY (Order_ID, Product_ID),
    FOREIGN KEY (Order_ID) REFERENCES Order_(Order_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);

CREATE TABLE Payment (
    Payment_ID INT PRIMARY KEY,
    Order_ID INT,
    Payment_amount DECIMAL(10, 2),
    Payment_date DATE,
    Status VARCHAR(50),
    FOREIGN KEY (Order_ID) REFERENCES Order_(Order_ID)
);

CREATE TABLE Refund (
    Refund_ID INT PRIMARY KEY,
    Order_ID INT,
    Amount DECIMAL(10, 2),
    Refund_date DATE,
    Reason TEXT,
    FOREIGN KEY (Order_ID) REFERENCES Order_(Order_ID)
);