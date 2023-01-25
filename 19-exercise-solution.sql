-- Task 1: Create Database

-- CREATE DATABASE online_shop;

-- Task 2 + 3: Create and configure table

-- CREATE TABLE products (
--     name VARCHAR(200),
--     price NUMERIC(10, 2),
--     description TEXT,
--     amount_in_stock SMALLINT,
--     image_path VARCHAR(500)
-- );

-- Task 4: insert dummy data

-- INSERT INTO products (price, name, description, amount_in_stock, image_path)
-- VALUES (
--     12.99, 
--     'A book', 
--     'This is a book - and this text could be way longer!', 
--     39,
--     'uploads/images/products/a-book.jpg'
-- );

-- Task 5: add constraints

-- ALTER TABLE products

-- MySQL
-- MODIFY COLUMN name VARCHAR(200) NOT NULL,
-- MODIFY COLUMN price NUMERIC(10, 2) NOT NULL CHECK (price > 0),
-- MODIFY COLUMN description TEXT NOT NULL,
-- MODIFY COLUMN amount_in_stock SMALLINT CHECK (amount_in_stock > 0);

-- Postgresql
-- ALTER COLUMN name SET NOT NULL,
-- ALTER COLUMN price SET NOT NULL,
-- ALTER COLUMN description SET NOT NULL,
-- ADD CONSTRAINT price_positive CHECK (price > 0),
-- ADD CONSTRAINT amount_in_stock_positive CHECK (amount_in_stock > 0);

-- Task 6: add id column

ALTER TABLE products
-- ADD COLUMN id INT PRIMARY KEY AUTO_INCREMENT; -- MySQL
ADD COLUMN id SERIAL PRIMARY KEY; -- Postgresql