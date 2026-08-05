---- Executive Summary ----
SELECT sum(sales) AS Total_Sales, 
sum(profit) AS Total_Profits,
sum(quantity) AS Total_Quantities,
count(DISTINCT order_id) AS Total_Orders,
sum(quantity) AS Total_Units_Sold
FROM SampleSuperstore;

==========================
### REGIONAL ANALYSIS ###
==========================
  
---- Region Analysis ----
SELECT region, sum(sales) AS Total_Sales, 
sum(profit) AS Total_Profit, 
round((sum(profit)/sum(sales))*100,2) AS Profit_Margin_Percentage, 
count(DISTINCT order_id) AS Total_Orders, 
round(avg(discount)*100,2) AS Average_Discount_Percentage FROM SampleSuperstore
GROUP BY region
ORDER BY Profit_Margin_Percentage DESC;

---- State Analysis ----
SELECT state,
sum(sales) AS Total_Sales,
sum(profit) AS Total_Profit
FROM SampleSuperstore
GROUP BY state
ORDER BY Total_Sales DESC;

---- City Analysis ----
SELECT city, 
sum(sales) AS Total_Sales,
sum(profit) AS Total_Profit
FROM SampleSuperstore
GROUP BY city 
ORDER BY Total_Sales DESC;

---- Profit Margin Analysis by State ----
SELECT state,
sum(sales) AS Total_Sales,
sum(profit) AS Total_Profit,
round((sum(profit)/sum(sales))*100,2) AS Profit_Margin_Percentage FROM SampleSuperstore
GROUP BY state
ORDER BY Profit_Margin_Percentage DESC;

==========================
### PRODUCT ANALYSIS ###
==========================

---- Category Analysis ----
SELECT category,sum(sales) AS Total_Sales,
sum(profit) AS Total_Profits,
COUNT(DISTINCT order_id) AS Total_Orders,
round((sum(profit)/sum(sales))*100,2) AS Profit_Margin_Percentage,
round(avg(discount)*100,2) AS Average_Discount_Percentage, 
max(sales) AS Highest_Product_Sale,
min(profit) AS Lowest_Product_Profit
FROM SampleSuperstore
GROUP BY category
ORDER BY Total_Sales DESC;

---- Sub-Category Analysis of Technology ----
SELECT category,
sub_category,
sum(sales) AS Total_Sales,
sum(profit) AS Total_Profits,
round((sum(profit)/sum(sales))*100,2) AS Profit_Margin_Percentage,
AVG(sales) AS Average_Product_Sale,
AVG(profit) Average_Product_Profit 
FROM SampleSuperstore
WHERE category LIKE 'Technology'
GROUP BY Sub_Category 
ORDER BY Total_Sales DESC;

---- Best Selling Products By Quantity ----
SELECT product_name,
sum(quantity) AS Units_Sold, 
sum(sales) AS Total_Sales
FROM SampleSuperstore
GROUP BY product_name
ORDER BY Units_Sold DESC
LIMIT 10;

---- Top 10 Products by Sales ----
SELECT product_name, 
sum(sales) AS Total_Sales, 
sum(profit) AS Total_Profits
FROM SampleSuperstore
GROUP BY product_name
ORDER BY Total_Sales DESC
limit 10;

---- Top 15 Loss Making Products ----
SELECT product_name,
sum(sales) AS Total_Sales, 
sum(profit) AS Total_Profit 
FROM SampleSuperstore
GROUP BY product_name
HAVING Total_Profit < 0
ORDER BY Total_Profit ASC
LIMIT 15;

==========================
### CUSTOMER ANALYSIS ###
==========================

---- Customers with Best Sales  ----
SELECT customer_name,
sum(sales) AS Total_Sales,
sum(profit) AS Total_Profits
FROM SampleSuperstore
GROUP BY customer_name
ORDER BY Total_Sales DESC;

---- Customers with Best Profit Margins  ----
SELECT customer_name,
sum(sales) AS Total_Sales, 
sum(profit) AS Total_Profits, 
round((sum(profit)/sum(sales)),2) AS Profit_Margin
FROM SampleSuperstore
GROUP BY customer_name
ORDER BY Profit_Margin DESC;

---- Top Customer Loss Making Orders ----
SELECT customer_name,
ROUND(sum(sales),2) AS Total_Sales,
ROUND(sum(profit),2) AS Total_Profit,
sum(quantity) AS Units_Sold
FROM SampleSuperstore
GROUP BY customer_name
HAVING Total_Profit < 0
ORDER BY Total_Profit ASC;

---- Customers with the most orders ----
SELECT customer_name,
COUNT(DISTINCT order_id) AS Total_Orders,
ROUND(sum(sales),2) AS Total_Sales,
ROUND(sum(profit),2) AS Total_Profit,
sum(quantity) AS Units_Sold,
ROUND((sum(profit)/sum(sales))*100,2) AS Profit_Margin_Percentage
FROM SampleSuperstore
GROUP BY customer_name
ORDER BY Total_Orders DESC;

==========================
### SALES ANALYSIS ###
==========================

---- Segment Performance ----
SELECT segment,
ROUND(sum(sales),2) AS Total_Sales,
ROUND(sum(profit),2) AS Total_Profit,
COUNT(DISTINCT order_id) as Total_Orders,
sum(quantity) AS Total_Units_Sold,
ROUND((sum(profit)/sum(sales))*100,2) AS Profit_Margin_Percentage,
ROUND((AVG(discount))*100,2) AS Average_Discount_Percentage
FROM SampleSuperstore
GROUP BY segment
ORDER BY Total_Sales DESC;

---- Ship Mode Performance ----
SELECT ship_mode,
ROUND(sum(sales),2) AS Total_Sales,
ROUND(sum(profit),2) AS Total_Profit,
COUNT(DISTINCT order_id) as Total_Orders,
sum(quantity) AS Total_Units_Sold,
ROUND((sum(profit)/sum(sales))*100,2) AS Profit_Margin_Percentage,
ROUND((AVG(discount))*100,2) AS Average_Discount_Percentage
FROM SampleSuperstore
GROUP BY ship_mode
ORDER BY Total_Sales DESC;

==========================
### DISCOUNT ANALYSIS ###
==========================

---- Profit by Discount Level ----
SELECT discount,
ROUND((sum(profit)/sum(sales))*100,2) AS Profit_Margin_Percentage,
ROUND(sum(sales),2) AS Total_Sales,
ROUND(sum(profit),2) AS Total_Profit,
COUNT(DISTINCT order_id) AS Total_Orders,
sum(quantity) AS Total_Units_Sold
FROM SampleSuperstore
GROUP BY discount
ORDER BY discount ASC;

---- Discount by Category ----
SELECT category,
ROUND(AVG(discount)*100,2) AS Average_Discount_Percentage,
ROUND(sum(profit)/sum(sales)*100,2) AS Profit_Margin_Percentage,
ROUND(sum(sales),2) AS Total_Sales,
ROUND(sum(profit),2) AS Total_Profit,
COUNT(DISTINCT order_id) AS Total_Orders,
sum(quantity) AS Total_Units_Sold
FROM SampleSuperstore
GROUP BY category
ORDER BY Profit_Margin_Percentage DESC;

---- Discount by Sub-Category ----
SELECT sub_category,
ROUND(AVG(discount)*100,2) AS Average_Discount_Percentage,
ROUND(sum(profit)/sum(sales)*100,2) AS Profit_Margin_Percentage,
ROUND(sum(sales),2) AS Total_Sales,
ROUND(sum(profit),2) AS Total_Profit,
COUNT(DISTINCT order_id) AS Total_Orders,
sum(quantity) AS Total_Units_Sold
FROM SampleSuperstore
GROUP BY sub_category
ORDER BY Profit_Margin_Percentage DESC;

---- Discount by Region ----
SELECT region,
ROUND(AVG(discount)*100,2) AS Average_Discount_Percentage,
ROUND(sum(profit)/sum(sales)*100,2) AS Profit_Margin_Percentage,
ROUND(sum(sales),2) AS Total_Sales,
ROUND(sum(profit),2) AS Total_Profit,
COUNT(DISTINCT order_id) AS Total_Orders,
sum(quantity) AS Total_Units_Sold
FROM SampleSuperstore
GROUP BY region
ORDER BY Profit_Margin_Percentage DESC;

==========================
### ORDER ANALYSIS ###
==========================

---- TOP 10 Orders by Sales ----
SELECT order_id,
customer_name,
ROUND(sum(sales),2) AS Total_Sales,
ROUND(sum(profit),2) AS Total_Profit,
sum(quantity) AS Total_Units_Sold
FROM SampleSuperstore
GROUP BY order_id
ORDER BY Total_Sales DESC
LIMIT 10;

---- Most Profitable Orders ----
SELECT order_id,
ROUND(sum(sales),2) AS Total_Sales,
ROUND(sum(profit),2) AS Total_Profit,
ROUND(sum(profit)/NULLIF(sum(sales),0)*100,2) AS Profit_Margin_Percentage
FROM SampleSuperstore
GROUP BY order_id
HAVING Profit_Margin_Percentage = 50;

---- Lost Making Orders ----
SELECT order_id,
ROUND(sum(sales),2) AS Total_Sales,
ROUND(sum(profit),2) AS Total_Profit,
ROUND(sum(profit)/NULLIF(sum(sales),0)*100,2) AS Profit_Margin_Percentage,
sum(quantity) AS Total_Units_Sold
FROM SampleSuperstore
GROUP BY order_id
HAVING Total_Profit < 0
ORDER BY Total_profit ASC;

---- TOP 10 Orders by Number of Products ----
SELECT order_id,
customer_name,
COUNT(DISTINCT product_name) AS Different_Products,
ROUND(sum(sales),2) AS Total_Sales,
ROUND(sum(profit),2) AS Total_Profit,
sum(quantity) AS Total_Units_Sold,
ROUND((sum(profit)/sum(sales))*100,2) AS Profit_Margin_Percentage
FROM SampleSuperstore
GROUP BY order_id
ORDER BY Different_Products DESC
LIMIT 10;

==========================
### TIME ANALYSIS ###
==========================
  
SELECT order_date,
order_id,
ROUND(sum(sales),2) AS Total_Sales,
ROUND(sum(profit),2) AS Total_Profit,
ROUND(sum(profit)/sum(sales)*100,2) AS Profit_Margin_Percentage
from SampleSuperstore
GROUP BY order_date
HAVING order_date LIKE '%2016%'
ORDER BY Total_Sales DESC
LIMIT 10;
