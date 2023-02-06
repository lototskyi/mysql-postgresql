-- SELECT first_name, last_name
-- FROM customers
-- WHERE email = 'max@test.com';

-- SELECT EXISTS(
--     SELECT first_name, last_name
--     FROM customers
--     WHERE email = 'manu@test.com'
-- );

SELECT id 
FROM orders AS o
WHERE EXISTS(
    SELECT email FROM customers AS c
    WHERE o.customer_id = c.id AND c.email = 'manu@test.com'
);