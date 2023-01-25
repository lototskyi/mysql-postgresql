-- CREATE TABLE users (
--     full_name VARCHAR(300) NOT NULL
-- );

ALTER TABLE users
-- ALTER COLUMN full_name SET NOT NULL, -- Postgesql
-- ALTER COLUMN current_status SET NOT NULL; -- Postgesql

MODIFY COLUMN full_name VARCHAR(300) NOT NULL, -- MySQL
MODIFY COLUMN current_status ENUM('employed', 'self-employed', 'unemployed') NOT NULL; -- MySQL