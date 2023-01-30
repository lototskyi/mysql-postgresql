-- CREATE TABLE company_buildings (
--     id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
--     -- id SERIAL PRIMARY KEY, -- Postgres
--     name VARCHAR(300) NOT NULL
-- );

-- CREATE TABLE teams (
--     id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
--     -- id SERIAL PRIMARY KEY, -- Postgres
--     name VARCHAR(300) NOT NULL,
--     -- building_id INT REFERENCES company_buildings ON DELETE SET NULL, -- Postgres
--     building_id INT,
--     FOREIGN KEY (building_id) REFERENCES company_buildings (id) ON DELETE SET NULL -- MySQL

-- );

-- CREATE TABLE employees (
--     id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
--     -- id SERIAL PRIMARY KEY, -- Postgres
--     first_name VARCHAR(300) NOT NULL,
--     last_name VARCHAR(300) NOT NULL,
--     birthdate DATE NOT NULL,
--     -- email VARCHAR(200) REFERENCES intranet_accounts ON DELETE 
--     email VARCHAR(200) UNIQUE NOT NULL,
--     -- team_id INT DEFAULT 1 REFERENCES teams ON DELETE SET DEFAULT -- Postgres
--     team_id INT DEFAULT 1, 
--     FOREIGN KEY (team_id) REFERENCES teams (id) ON DELETE SET DEFAULT -- MySQL
-- );

CREATE TABLE intranet_accounts (
    id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
    -- id SERIAL PRIMARY KEY, -- Postgres
    -- email VARCHAR(200) REFERENCES employees (email) ON DELETE CASCADE, -- Postgres
    email VARCHAR(200), 
    FOREIGN KEY (email) REFERENCES employees (email) ON DELETE CASCADE, -- MySQL
    password VARCHAR(200) NOT NULL
);