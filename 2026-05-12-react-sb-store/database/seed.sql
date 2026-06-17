INSERT INTO Customer (name, address, phone)
VALUES 
('John Doe', '123 Main St', '555-1234'),
('Jane Smith', '456 Oak Ave', '555-5678');

INSERT INTO Inventory (product_name, quantity, price)
VALUES 
('Laptop', 10, 999.99),
('Mouse', 20, 29.99);

INSERT INTO Orders (customer_id, created_at)
VALUES 
(1, NOW()),
(2, NOW());

INSERT INTO OrderItem (order_id, inventory_id, quantity, price)
VALUES 
(1, 1, 1, 999.99),
(1, 2, 2, 29.99),
(2, 2, 1, 29.99);