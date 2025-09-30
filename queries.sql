CREATE DATABASE sales_trends;
USE sales_trends;
CREATE TABLE online_sales (
    transaction_id VARCHAR(50) PRIMARY KEY,
    order_date DATE,
    product_category VARCHAR(100),
    product_name VARCHAR(150),
    units_sold INT,
    unit_price DECIMAL(10,2),
    total_revenue DECIMAL(12,2),
    region VARCHAR(100),
    payment_method VARCHAR(50)
);

SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(total_revenue) AS monthly_revenue,
    COUNT(DISTINCT transaction_id) AS order_volume
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;

SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(total_revenue) AS monthly_revenue
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY monthly_revenue DESC
LIMIT 3;

SELECT 
    YEAR(order_date) AS year,
    SUM(total_revenue) AS yearly_revenue,
    COUNT(DISTINCT transaction_id) AS yearly_orders,
    SUM(units_sold) AS total_units_sold
FROM online_sales
GROUP BY YEAR(order_date)
ORDER BY year;

SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(total_revenue) / COUNT(DISTINCT transaction_id) AS avg_order_value
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;

SELECT 
    product_category,
    SUM(total_revenue) AS total_sales,
    SUM(units_sold) AS total_units
FROM online_sales
GROUP BY product_category
ORDER BY total_sales DESC;

SELECT 
    region,
    SUM(total_revenue) AS total_sales
FROM online_sales
GROUP BY region
ORDER BY total_sales DESC;

SELECT 
    product_name,
    SUM(total_revenue) AS total_sales
FROM online_sales
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 5;