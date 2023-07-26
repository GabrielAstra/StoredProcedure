CREATE TABLE customers (
    customer_id int NOT NULL ,
    name varchar(50) NOT NULL,
    email varchar(100) NOT NULL,
    PRIMARY KEY (customer_id)
);

CREATE TABLE orders (
    order_id int NOT NULL ,
    customer_id int NOT NULL,
    order_date date NOT NULL,
    order_total float NOT NULL,
    PRIMARY KEY (order_id),
    FOREIGN KEY (customer_id) REFERENCES customers (customer_id)
);

INSERT INTO customers (name, email)
VALUES ('John Doe', 'john.doe@example.com'),
        ('Jane Doe', 'jane.doe@example.com');

INSERT INTO orders (customer_id, order_date, order_total)
VALUES (1, '2023-07-25', 100.00),
        (2, '2023-07-26', 200.00);

SELECT c.name, o.order_date, o.order_total
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id;
