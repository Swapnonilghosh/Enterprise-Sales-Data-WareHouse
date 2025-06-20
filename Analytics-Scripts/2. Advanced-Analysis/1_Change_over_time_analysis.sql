-- Changes over time --> Trends Analysis

-- Sales per month every year. USING Year/Month func. (Integer Type)
SELECT
YEAR (order_date) as order_year,
MONTH(order_date),
SUM(sales_amount) AS total_Sales,
COUNT(DISTINCT customer_key) AS total_Customers,
SUM(quantity) as total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY YEAR (order_date), MONTH(order_date)
ORDER BY YEAR (order_date), MONTH(order_date)

-- Sales per month every year. USING DATETRUNC func. (Date Type)
SELECT
DATETRUNC(month, order_date) as order_date,
SUM(sales_amount) AS total_Sales,
COUNT(DISTINCT customer_key) AS total_Customers,
SUM(quantity) as total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY DATETRUNC(month, order_date)
ORDER BY DATETRUNC(month, order_date)

-- Sales per month every year. Using FORMAT func (Unsorted chronologically) (String Type)
SELECT
FORMAT(order_date, 'yyyy-MMM') as order_date,
SUM(sales_amount) AS total_Sales,
COUNT(DISTINCT customer_key) AS total_Customers,
SUM(quantity) as total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY FORMAT(order_date, 'yyyy-MMM')
ORDER BY FORMAT(order_date, 'yyyy-MMM')