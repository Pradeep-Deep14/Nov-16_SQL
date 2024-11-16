CREATE TABLE sales (sale_id INT PRIMARY KEY, customer_id INT, store_name VARCHAR(100), sale_date DATE); 
INSERT INTO sales VALUES 
	(1, 1, 'Reliance Digital', '2023-01-05'),
	(2, 2, 'Croma', '2023-02-14'), 
	(3, 1, 'Croma', '2023-02-20');

SELECT * FROM SALES



/*
Identify the customers who made purchases from both Reliance Digital and Croma.*/



SELECT customer_id
FROM sales
WHERE store_name = 'Reliance Digital'

INTERSECT

SELECT customer_id
FROM sales
WHERE store_name = 'Croma';
