SELECT 
    'Hello world',
    customer_name, 
    product_name, 
    volume / 1000 AS total_sales, 
    date_created 
FROM sales;