--
-- create database name wct_week6
--
CREATE DATABASE wct_week6;

--
-- create customers table
--
CREATE TABLE customers (
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    sex VARCHAR(2) NOT NULL
);

--
-- create customer recordS
--
INSERT INTO customers (id, name, sex) VALUES
(1, 'Sok San', 'M'),
(2, 'Hong Heng', 'M'),
(5, 'Mey Long', 'F'),
(6, 'Dara Mony', 'F');

--
-- create product table
--

CREATE TABLE products(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    qty INT(11) NOT NULL,
    unit_price DOUBLE NOT NULL
);

--
-- create product records
--
INSERT INTO products (id, name, qty, unit_price) VALUES
(1, 'Mouse', 5, 10),
(2, 'Keyboard', 100, 4),
(3, 'Dutch Milk', 20, 4),
(4, 'Fish Sauce', 50, 2.5);

--
-- Write a SQL command to insert 5 sale records to table “sales”.
-- create sale table
--
CREATE TABLE sales(
	id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT(11) NOT NULL,
    product_id INT(11) NOT NULL,
	qty INT(11) NOT NULL,
	unit_price DOUBLE NOT NULL,
	CONSTRAINT FK_customerSale FOREIGN KEY(customer_id) REFERENCES customers(id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT FK_productSale FOREIGN KEY(product_id) REFERENCES products(id) ON DELETE CASCADE ON UPDATE CASCADE 	
);

--
-- create sale records
--

-- sale 1
INSERT INTO sales (id, customer_id, product_id, qty, unit_price) VALUES
(1, 1, 1, 1, 10);

-- sale 2
INSERT INTO sales (id, customer_id, product_id, qty, unit_price) VALUES
(2, 2, 1, 2, 4);

-- sale 3
INSERT INTO sales (id, customer_id, product_id, qty, unit_price) VALUES
(3, 1, 2, 1, 10);

-- sale 4
INSERT INTO sales (id, customer_id, product_id, qty, unit_price) VALUES
(4, 1, 3, 1, 10);

-- create customer id = 3
INSERT INTO customers (id, name, sex) VALUES
(3, 'Pheakdey Arn', 'M');

-- sale 5 with custumer id=3
INSERT INTO sales (id, customer_id, product_id, qty, unit_price) VALUES
(5, 3, 4, 5, 4);

--
-- 2. Display all the customer information who bought the product.
--
SELECT customers.* FROM customers, sales
WHERE customers.id = sales.customer_id;

--
-- 3. Display all sale records that have a total amount bigger than equal $10.
--
SELECT * FROM sales
WHERE unit_price >= 10;








