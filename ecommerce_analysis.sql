select sum(profit)
from ecommerce_sales_data; -- it add profit values


select
max(sales) as max_sales,
max(profit) as max_profit
from ecommerce_sales_data;

-- total quantity sold
select sum(quantity)
from ecommerce_sales_data;

-- revenue by category
SELECT category,
       SUM(profit) AS total_profit
FROM ecommerce_sales_data
GROUP BY category
ORDER BY total_profit DESC;

-- profit by region
SELECT region,
       SUM(profit) AS total_profit
FROM ecommerce_sales_data
GROUP BY region
ORDER BY total_profit DESC;

-- top 5 product by profit
SELECT `Product Name`,
       SUM(profit) AS total_profit
FROM ecommerce_sales_data
GROUP BY `Product Name`
ORDER BY total_profit DESC
LIMIT 5;

-- monthly sales 
SELECT MONTH(`Order Date`) AS month,
       SUM(profit) AS monthly_profit,
       SUM(sales) AS monthly_sales
FROM ecommerce_sales_data
GROUP BY MONTH(`Order Date`)
ORDER BY month;

Total Sales → 1,0667881
Total Profit → 1,844,665.20
Total Quantity Sold → 17,261
Most Profitable Category → Electronics
Most Profitable Region → West
Top Products → (camera)
