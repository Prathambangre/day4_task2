CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,  
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15)
);

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,   
    customer_id INT,                 
    order_date DATE,
    amount DECIMAL(10, 2),
    status VARCHAR(20),
	
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO customers (first_name, last_name, email, phone)
VALUES
('Pratham', 'Bangre', 'prathambangre8@gmail.com', '9049108653'),
('Gaurav', 'Shelure', 'Gauravshelure7@gmail.com', '7758932666');

INSERT INTO orders (customer_id, order_date, amount, status)
VALUES
(1, '2025-03-15', 150.75, 'Completed'),
(1, '2025-03-20', 89.99, 'Pending'),
(2, '2025-03-22', 120.50, 'Shipped');

SELECT o.order_id, o.order_date, o.amount, o.status, c.first_name, c.last_name
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;