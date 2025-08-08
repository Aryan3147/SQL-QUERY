
-- Create Customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    city VARCHAR(50),
    country VARCHAR(50)
);

-- Create Orders table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Create Products table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

-- Create Order_Items table
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Insert Customers
INSERT INTO customers VALUES
(1, 'John', 'Doe', 'john@example.com', 'New York', 'USA'),
(2, 'Jane', 'Smith', 'jane@example.com', 'London', 'UK'),
(3, 'Alex', 'Johnson', 'alex@example.com', 'Mumbai', 'India');

-- Insert Orders
INSERT INTO orders VALUES
(101, 1, '2025-07-01', 200),
(102, 2, '2025-07-05', 350),
(103, 1, '2025-07-10', 150);

-- Insert Products
INSERT INTO products VALUES
(1001, 'Laptop Bag', 'Accessories', 50),
(1002, 'Headphones', 'Electronics', 100),
(1003, 'Keyboard', 'Electronics', 70);

-- Insert Order Items
INSERT INTO order_items VALUES
(1, 101, 1001, 2, 50),
(2, 101, 1002, 1, 100),
(3, 102, 1003, 5, 70),
(4, 103, 1001, 1, 50);
