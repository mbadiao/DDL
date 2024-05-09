CREATE TABLE Customer (
    Customer_id INT AUTOINCREMENT PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    customer_Tel INT
);

CREATE TABLE Product (
    Product_id INT AUTOINCREMENT PRIMARY KEY,
    product_name VARCHAR(50) NOT NULL,
    Price INT
);

CREATE TABLE Orders (
    quantity INT,
    total_amount INT,
    FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id),
    FOREIGN KEY (Product_id) REFERENCES Product(Product_id)
);

ALTER TABLE Product 
ADD Category VARCHAR2(20);

ALTER TABLE Orders
ADD OrderDate DATE DEFAULT SYSDATE;