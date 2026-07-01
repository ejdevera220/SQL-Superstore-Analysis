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

