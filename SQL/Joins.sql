USE amazon;
CREATE TABLE customers(
  customer_id INT PRIMARY KEY,
  name VARCHAR(20),
  city VARCHAR(30)
);
INSERT INTO customers VALUES
(1,"Alice","Mumbai"),
(2,"Bob","Delhi"),
(3,"Charlie","Bangalore"),
(4,"David","Mumbai");

CREATE TABLE orders(
   oerder_idv INT PRIMARY KEY,
   customer_id INT,
   amount int
);
INSERT INTO orders VALUES
(101,1,500),
(102,1,900),
(103,2,300),
(104,5,700);

SELECT * FROM customers;
SELECT * FROM orders;

SELECT * 
FROM customers c
INNER JOIN orders o 
ON c.customer_id =o.customer_id;

SELECT * 
FROM customers c
LEFT JOIN orders o 
ON c.customer_id =o.customer_id;

SELECT * 
FROM customers c
RIGHT JOIN orders o 
ON c.customer_id =o.customer_id;

SELECT * 
FROM customers c
LEFT JOIN orders o 
ON c.customer_id =o.customer_id
UNION
SELECT * 
FROM customers c
RIGHT JOIN orders o 
ON c.customer_id =o.customer_id;

SELECT *
FROM customers
CROSS JOIN orders;















