.mode table

-- Create Sales table

CREATE TABLE sale (
    id INT PRIMARY KEY,
    product_id INT,
    quantity_sold INT,
    date DATE,
    total_price DECIMAL(10, 2)
);

-- Insert sample data into Sales table

INSERT INTO sale(id, product_id, quantity_sold, date, total_price)
VALUES
(1, 101, 5, '2024-01-01', 2500.00),
(2, 102, 3, '2024-01-02', 900.00),
(3, 103, 2, '2024-01-02', 60.00),
(4, 104, 4, '2024-01-03', 80.00),
(5, 105, 6, '2024-01-03', 90.00);

-- Select * FROM Sales; 

-- Create Products table

CREATE TABLE product (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(50),
    unit_price DECIMAL(10, 2)
);

-- Insert sample data into Products table

INSERT INTO product (id, name, category, unit_price) VALUES
(101, 'Laptop', 'Electronics', 500.00),
(102, 'Smartphone', 'Electronics', 300.00),
(103, 'Headphones', 'Electronics', 30.00),
(104, 'Keyboard', 'Electronics', 20.00),
(105, 'Mouse', 'Electronics', 15.00);



--#8
Select SUM(total_price) AS total_revenue FROM sale;

--#9
Select AVG(unit_price) AS average_unit_price FROM product;

--#10
Select SUM(quantity_sold) AS total_quantity_sold FROM sale;

--#11
SELECT date,COUNT(*) AS sale_count FROM sale
GROUP BY date 
ORDER BY date;

--#12 
SELECT name, unit_price FROM product 
ORDER BY unit_price DESC LIMIT 1;
--#13
SELECT id,product_id,total_price FROM sale
WHERE quantity_sold > 4;

--#14
SELECT name,unit_price FROM product
ORDER BY unit_price DESC;

--#15

SELECT ROUND(SUM(total_price),2) AS total_sales
FROM sale;

--#16
SELECT AVG(total_price) as average_total_price
FROM sale;


