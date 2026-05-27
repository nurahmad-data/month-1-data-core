CREATE TABLE customers (
    customer_id INT PRIMARY KEY, 
    name VARCHAR(50), 
    email TEXT, 
    country TEXT
);
CREATE TABLE products (
    product_id INT PRIMARY KEY, 
    name TEXT, 
    category TEXT, 
    price FLOAT
);
CREATE TABLE orders (
    order_id INT PRIMARY KEY, 
    customer_id INT, 
    order_date TEXT, 
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY, 
    order_id INT, 
    product_id INT, 
    quantity INT, 
    FOREIGN KEY (order_id) REFERENCES orders(order_id), 
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- SEED DATA (Injecting mock records for analytics testing)

INSERT INTO customers (customer_id, name, email, country) VALUES
(1, 'Kenji Tanaka', 'kenji@example.com', 'Japan'),
(2, 'Sakura Sato', 'sakura@example.com', 'Japan'),
(3, 'John Smith', 'john@example.com', 'USA'),
(4, 'Hans Mueller', 'hans@example.com', 'Germany'),
(5, 'Yuki Nakamura', 'yuki@example.com', 'Japan');

INSERT INTO products (product_id, name, category, price) VALUES
(1, 'Pro Laptop', 'Electronics', 1200.00),
(2, 'Mechanical Keyboard', 'Electronics', 150.00),
(3, 'Cotton T-Shirt', 'Apparel', 25.00),
(4, 'Ergonomic Chair', 'Furniture', 300.00),
(5, 'Wireless Mouse', 'Electronics', 50.00);

INSERT INTO orders (order_id, customer_id, order_date) VALUES
(101, 1, '2026-05-01'),
(102, 2, '2026-05-02'),
(103, 3, '2026-05-03'),
(104, 5, '2026-05-04'),
(105, 1, '2026-05-05');

INSERT INTO order_items (order_item_id, order_id, product_id, quantity) VALUES
(1001, 101, 1, 1), -- Kenji buys Laptop ($1200)
(1002, 102, 2, 1), -- Sakura buys Keyboard ($150)
(1003, 102, 5, 1), -- Sakura buys Mouse ($50)
(1004, 103, 3, 2), -- John buys 2 T-shirts ($50)
(1005, 104, 1, 1), -- Yuki buys Laptop ($1200)
(1006, 104, 4, 1), -- Yuki buys Chair ($300)
(1007, 105, 5, 1); -- Kenji buys Mouse ($50)