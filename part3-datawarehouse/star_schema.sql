-- Dimension Table: Product
CREATE TABLE dim_product (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);

-- Dimension Table: Store
CREATE TABLE dim_store (
    store_id VARCHAR(10) PRIMARY KEY,
    store_name VARCHAR(100),
    city VARCHAR(50)
);

-- Dimension Table: Date
CREATE TABLE dim_date (
    date_id DATE PRIMARY KEY,
    year INT,
    month INT,
    day INT
);

-- Fact Table
CREATE TABLE fact_sales (
    sale_id SERIAL PRIMARY KEY,
    date_id DATE,
    product_id VARCHAR(10),
    store_id VARCHAR(10),
    quantity INT,
    total_amount DECIMAL(10,2),

    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id)
);

-- Insert cleaned product data
INSERT INTO dim_product VALUES
('P1','Laptop','Electronics'),
('P2','T-Shirt','Clothing'),
('P3','Rice','Groceries');

-- Insert cleaned store data
INSERT INTO dim_store VALUES
('S1','Central Store','Delhi'),
('S2','Mega Mart','Mumbai'),
('S3','Quick Buy','Bangalore');

-- Insert cleaned date data
INSERT INTO dim_date VALUES
('2024-01-01',2024,1,1),
('2024-01-02',2024,1,2),
('2024-02-01',2024,2,1),
('2024-02-05',2024,2,5),
('2024-03-01',2024,3,1);

-- Insert sample fact rows
INSERT INTO fact_sales (date_id,product_id,store_id,quantity,total_amount) VALUES
('2024-01-01','P1','S1',1,55000),
('2024-01-01','P2','S2',3,2400),
('2024-01-02','P3','S1',5,500),
('2024-02-01','P1','S3',1,55000),
('2024-02-01','P2','S1',2,1600),
('2024-02-05','P3','S2',4,400),
('2024-03-01','P2','S3',3,2400),
('2024-03-01','P1','S2',1,55000),
('2024-03-01','P3','S1',6,600),
('2024-03-01','P2','S2',2,1600);
