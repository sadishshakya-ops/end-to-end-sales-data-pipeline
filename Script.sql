-- Total Sales & Profit
SELECT SUM(sales) AS total_sales, SUM(profit) AS total_profit
FROM superstore;

-- Sales by Category
SELECT category, SUM(sales) AS sales
FROM superstore
GROUP BY category;

-- Top 5 Customers
SELECT customer_name, SUM(sales) AS total_sales
FROM superstore
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 5;

-- Loss-making Products
SELECT product_name, SUM(profit) AS profit
FROM superstore
GROUP BY product_name
HAVING SUM(profit) < 0;

CREATE TABLE dim_customer (
    customer_id VARCHAR PRIMARY KEY,
    customer_name TEXT,
    segment TEXT,
    region TEXT);

CREATE TABLE dim_product (
    product_id VARCHAR PRIMARY KEY,
    product_name TEXT,
    category TEXT,
    sub_category TEXT);

CREATE TABLE dim_date (
    date_id SERIAL PRIMARY KEY,
    order_date DATE UNIQUE,
    year INT,
    month INT,
    quarter INT);

CREATE TABLE fact_sales (
    sales_id SERIAL PRIMARY KEY,
    customer_id VARCHAR REFERENCES dim_customer(customer_id),
    product_id VARCHAR REFERENCES dim_product(product_id),
    date_id INT REFERENCES dim_date(date_id),
    sales NUMERIC,
    profit NUMERIC,
    quantity INT,
    discount NUMERIC);


SELECT
    tc.table_name,
    kcu.column_name,
    ccu.table_name AS foreign_table
FROM information_schema.table_constraints AS tc
JOIN information_schema.key_column_usage AS kcu
    ON tc.constraint_name = kcu.constraint_name
JOIN information_schema.constraint_column_usage AS ccu
    ON ccu.constraint_name = tc.constraint_name
WHERE constraint_type = 'FOREIGN KEY';




































