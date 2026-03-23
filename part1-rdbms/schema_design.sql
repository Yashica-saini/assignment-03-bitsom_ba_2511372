CREATE TABLE customers (
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    customer_email VARCHAR(100) NOT NULL,
    customer_city VARCHAR(50) NOT NULL
);

CREATE TABLE products (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL
);

CREATE TABLE sales_reps (
    sales_rep_id VARCHAR(10) PRIMARY KEY,
    sales_rep_name VARCHAR(100) NOT NULL,
    sales_rep_email VARCHAR(100) NOT NULL,
    office_address TEXT NOT NULL
);

CREATE TABLE orders (
    order_id VARCHAR(10) PRIMARY KEY,
    order_date DATE NOT NULL,
    customer_id VARCHAR(10),
    sales_rep_id VARCHAR(10),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (sales_rep_id) REFERENCES sales_reps(sales_rep_id)
);

CREATE TABLE order_items (
    order_item_id SERIAL PRIMARY KEY,
    order_id VARCHAR(10),
    product_id VARCHAR(10),
    quantity INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO customers VALUES
('C001','Rahul Sharma','rahul@email.com','Mumbai'),
('C002','Priya Singh','priya@email.com','Delhi'),
('C003','Amit Patel','amit@email.com','Ahmedabad'),
('C004','Neha Gupta','neha@email.com','Mumbai'),
('C005','Arjun Mehta','arjun@email.com','Bangalore');


INSERT INTO products VALUES
('P001','Laptop','Electronics',55000),
('P002','Headphones','Electronics',2000),
('P003','Desk Chair','Furniture',7000),
('P004','Keyboard','Electronics',1500),
('P005','Mouse','Electronics',800);


INSERT INTO sales_reps VALUES
('S001','Rohit Verma','rohit@company.com','Delhi Office'),
('S002','Anita Shah','anita@company.com','Mumbai HQ'),
('S003','Karan Malhotra','karan@company.com','Bangalore Office'),
('S004','Pooja Nair','pooja@company.com','Chennai Office'),
('S005','Vikas Kapoor','vikas@company.com','Delhi Office');


INSERT INTO orders VALUES
('ORD1','2025-01-10','C001','S001'),
('ORD2','2025-01-12','C002','S002'),
('ORD3','2025-01-15','C003','S003'),
('ORD4','2025-01-18','C004','S002'),
('ORD5','2025-01-20','C005','S004');


INSERT INTO order_items (order_id,product_id,quantity) VALUES
('ORD1','P001',1),
('ORD1','P002',2),
('ORD2','P003',1),
('ORD3','P004',3),
('ORD4','P005',4);
