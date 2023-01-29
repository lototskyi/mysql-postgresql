CREATE TABLE addresses (
    id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
    -- id SERIAL PRIMARY KEY, -- Postgres
    street VARCHAR(300) NOT NULL,
    house_number VARCHAR(50) NOT NULL,
    city_id INT NOT NULL
);

CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
    -- id SERIAL PRIMARY KEY, -- Postgres
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    email VARCHAR(300) NOT NULL,
    -- address_id INT REFERENCES addresses (id) ON DELETE NO ACTIONS -- don't allow deleting
    -- address_id INT REFERENCES addresses (id) ON DELETE RESTRICT -- don't allow deleting
    address_id INT REFERENCES addresses (id) ON DELETE CASCADE -- delete users row as well
);



CREATE TABLE cities (
    id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
    -- id SERIAL PRIMARY KEY, -- Postgres
    name VARCHAR(300) NOT NULL
);