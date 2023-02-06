-- INSERT INTO customers(
--     first_name,
--     last_name,
--     email
-- )
-- VALUES(
--     'Ken',
--     'Brooks',
--     'ken@test.com'
-- );

-- SELECT email FROM customers;

-- SELECT email form FROM customers AS c
-- INNER JOIN orders AS o ON c.id = o.customer_id;

-- SELECT id 
-- FROM customers
-- WHERE first_name = 'Max' OR first_name = 'Manu';

-- SELECT id, first_name 
-- FROM customers
-- WHERE first_name NOT IN('Max', 'Manu');

SELECT email
FROM customers
WHERE id IN(
    SELECT customer_id
    FROM orders
);