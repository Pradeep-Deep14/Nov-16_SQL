CREATE TABLE customers (
         customer_id INT, 
         customer_name VARCHAR(100)
     );
     CREATE TABLE products (
         product_id INT, 
         product_name VARCHAR(100), 
         category_id INT, 
         price DECIMAL(10, 2)
     );
     CREATE TABLE purchases (
         purchase_id INT, 
         customer_id INT, 
         product_id INT
     );
     INSERT INTO customers VALUES 
         (1, 'Alice'), 
         (2, 'Bob'), 
         (3, 'Charlie');
     INSERT INTO products VALUES 
         (1, 'Laptop', 1, 800), 
         (2, 'Smartphone', 1, 600), 
         (3, 'Book', 2, 20), 
         (4, 'Headphones', 1, 150);
     INSERT INTO purchases VALUES 
         (1, 1, 1), 
         (2, 1, 2), 
         (3, 1, 3), 
         (4, 2, 2), 
         (5, 2, 3), 
         (6, 3, 1), 
         (7, 3, 2), 
         (8, 3, 4);

SELECT * FROM CUSTOMERS

SELECT * FROM PURCHASES

SELECT * FROM PRODUCTS
	
/*
List all customers who have made purchases in all product categories and the total amount they spent.
*/

SELECT  c.customer_id, 
	    c.customer_name,
  		SUM(p.price) AS total_spent   
FROM customers c 
JOIN purchases pu ON c.customer_id = pu.customer_id 
JOIN products p ON pu.product_id = p.product_id 
GROUP BY c.customer_id, c.customer_name 
HAVING COUNT(DISTINCT p.category_id) = (SELECT COUNT(DISTINCT category_id) FROM products);

