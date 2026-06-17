CREATE TABLE Customer (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    address VARCHAR(255),
    phone VARCHAR(20)
);

CREATE TABLE Inventory (
    id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    quantity INT,
    price DECIMAL(10, 2)
);

CREATE TABLE Orders (
    id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES Customer(id),
    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE OrderItem (
    id SERIAL PRIMARY KEY,
    order_id INT REFERENCES Orders(id),
    inventory_id INT REFERENCES Inventory(id),
    quantity INT,
    price DECIMAL(10, 2)
);