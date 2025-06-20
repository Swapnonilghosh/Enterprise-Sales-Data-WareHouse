-- "Aggregate"Data progressively over the time

-- Calculate the total sales per month AND the running total of sales over time
SELECT
order_date,
total_sales,
SUM(total_sales) OVER (ORDER BY order_date) AS running_total_sales
FROM 
(
SELECT
DATETRUNC(month, order_date) as order_date,
SUM(sales_amount) AS total_Sales
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY DATETRUNC(month, order_date)
)t

-- Calculate the total sales per month AND the running total of sales over time "(per year)"
SELECT
order_date,
total_sales,
SUM(total_sales) OVER (PARTITION BY order_date ORDER BY order_date) AS running_total_sales
FROM 
(
SELECT
DATETRUNC(month, order_date) as order_date,
SUM(sales_amount) AS total_Sales
FROM gold.fact_sales
WHERE orde _date IS NOT NULL
GROUP BY DATETRUNC(month, order_date)
)t

-- Calculate the total sales per years AND the running total of avg price over time
SELECT
order_date,
total_sales,
SUM(total_sales) OVER (PARTITION BY order_date ORDER BY order_date) AS running_total_sales,
AVG(avg_price) OVER (PARTITION BY order_date ORDER BY order_date) AS moving_average_price
FROM 
(
SELECT
DATETRUNC(year, order_date) as order_date,
SUM(sales_amount) AS total_Sales,
AVG(price) AS avg_price
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY DATETRUNC(year, order_date)
)t