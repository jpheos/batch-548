-- List all customers (name + email), ordered alphabetically (no extra information)

SELECT first_name ||  ' ' ||  last_name as name, email
FROM customers
ORDER BY  name

