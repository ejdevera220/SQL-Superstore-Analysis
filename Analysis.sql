-- =========================
-- 1. ### EXECUTIVE SUMMARY ### 
-- =========================
SELECT sum(sales) AS Total_Sales, 
sum(profit) AS Total_Profits,
sum(quantity) AS Total_Units_Sold,
COUNT(DISTINCT order_id) AS Total_Orders
FROM SampleSuperstore;

-- =========================
-- 2. ### REGIONAL ANALYSIS ### 
-- =========================
  
-- 2.1 # Regional Performance # 
SELECT region, sum(sales) AS Total_Sales, 
sum(profit) AS Total_Profit, 
round((SUM(profit) / NULLIF(SUM(sales), 0))*100,2) AS Profit_Margin_Percentage, 
count(DISTINCT order_id) AS Total_Orders, 
round(avg(discount)*100,2) AS Average_Discount_Percentage FROM SampleSuperstore
GROUP BY region
ORDER BY Profit_Margin_Percentage DESC;

-- # 2.2 State Performance #
SELECT state,
sum(sales) AS Total_Sales,
sum(profit) AS Total_Profit
FROM SampleSuperstore
GROUP BY state
ORDER BY Total_Sales DESC;

-- # 2.3 City Performance #
SELECT city, 
sum(sales) AS Total_Sales,
sum(profit) AS Total_Profit
FROM SampleSuperstore
GROUP BY city 
ORDER BY Total_Sales DESC;

-- # 2.4 Profit Margin By State #
SELECT state,
sum(sales) AS Total_Sales,
sum(profit) AS Total_Profit,
round((SUM(profit) / NULLIF(SUM(sales), 0))*100,2) AS Profit_Margin_Percentage FROM SampleSuperstore
GROUP BY state
ORDER BY Profit_Margin_Percentage DESC;

-- =========================
-- 3. ### PRODUCT ANALYSIS ### 
-- =========================

-- # 3.1 Category Performance #
SELECT category,sum(sales) AS Total_Sales,
sum(profit) AS Total_Profits,
COUNT(DISTINCT order_id) AS Total_Orders,
round((SUM(profit) / NULLIF(SUM(sales), 0))*100,2) AS Profit_Margin_Percentage,
round(avg(discount)*100,2) AS Average_Discount_Percentage, 
max(sales) AS Highest_Individual_Sale,
min(profit) AS Lowest_Individual_Profit
FROM SampleSuperstore
GROUP BY category
ORDER BY Total_Sales DESC;

-- # 3.2 Technology Sub-Category Performance #
SELECT category,
sub_category,
sum(sales) AS Total_Sales,
sum(profit) AS Total_Profits,
round((SUM(profit) / NULLIF(SUM(sales), 0))*100,2) AS Profit_Margin_Percentage,
AVG(sales) AS Average_Product_Sale,
AVG(profit) Average_Product_Profit 
FROM SampleSuperstore
WHERE category LIKE 'Technology'
GROUP BY Sub_Category 
ORDER BY Total_Sales DESC;

-- # 3.3 Top 10 Best Selling Products by Units Sold #
SELECT product_name,
sum(quantity) AS Units_Sold, 
sum(sales) AS Total_Sales
FROM SampleSuperstore
GROUP BY product_name
ORDER BY Units_Sold DESC
LIMIT 10;

-- # 3.4 Top 10 Products by Sales #
SELECT product_name, 
sum(sales) AS Total_Sales, 
sum(profit) AS Total_Profits
FROM SampleSuperstore
GROUP BY product_name
ORDER BY Total_Sales DESC
limit 10;

-- # 3.5 Top 15 Loss-Making Products #
SELECT product_name,
sum(sales) AS Total_Sales, 
sum(profit) AS Total_Profit 
FROM SampleSuperstore
GROUP BY product_name
HAVING Total_Profit < 0
ORDER BY Total_Profit ASC
LIMIT 15;

-- =========================
-- 4. ### CUSTOMER ANALYSIS ### 
-- =========================

-- # 4.1 Top 10 Customers by Sales # 
SELECT customer_name,
sum(sales) AS Total_Sales,
sum(profit) AS Total_Profits
FROM SampleSuperstore
GROUP BY customer_name
ORDER BY Total_Sales DESC
LIMIT 10;

-- # 4.2 Top 15 Customers with Best Profit Margins # 
SELECT customer_name,
sum(sales) AS Total_Sales, 
sum(profit) AS Total_Profits, 
ROUND((SUM(profit) / NULLIF(SUM(sales), 0))*100,2) AS Profit_Margin_Percentage
FROM SampleSuperstore
GROUP BY customer_name
ORDER BY Profit_Margin_Percentage DESC
LIMIT 15;

-- # 4.3 Top 10 Loss-Making Customers #
SELECT customer_name,
ROUND(sum(sales),2) AS Total_Sales,
ROUND(sum(profit),2) AS Total_Profit,
sum(quantity) AS Units_Sold
FROM SampleSuperstore
GROUP BY customer_name
HAVING Total_Profit < 0
ORDER BY Total_Profit ASC
LIMIT 10;

-- # 4.4 Top 10 Customers with the Most Orders #
SELECT customer_name,
COUNT(DISTINCT order_id) AS Total_Orders,
ROUND(sum(sales),2) AS Total_Sales,
ROUND(sum(profit),2) AS Total_Profit,
sum(quantity) AS Units_Sold,
ROUND((SUM(profit) / NULLIF(SUM(sales), 0))*100,2) AS Profit_Margin_Percentage
FROM SampleSuperstore
GROUP BY customer_name
ORDER BY Total_Orders DESC;

-- =========================
-- 5. ### SALES ANALYSIS ###  
-- =========================

-- # 5.1 Segment Performance # 
SELECT segment,
ROUND(sum(sales),2) AS Total_Sales,
ROUND(sum(profit),2) AS Total_Profit,
COUNT(DISTINCT order_id) as Total_Orders,
sum(quantity) AS Total_Units_Sold,
ROUND((SUM(profit) / NULLIF(SUM(sales), 0))*100,2) AS Profit_Margin_Percentage,
ROUND((AVG(discount))*100,2) AS Average_Discount_Percentage
FROM SampleSuperstore
GROUP BY segment
ORDER BY Total_Sales DESC;

-- # 5.2 Ship Mode Performance #
SELECT ship_mode,
ROUND(sum(sales),2) AS Total_Sales,
ROUND(sum(profit),2) AS Total_Profit,
COUNT(DISTINCT order_id) as Total_Orders,
sum(quantity) AS Total_Units_Sold,
ROUND((SUM(profit) / NULLIF(SUM(sales), 0))*100,2) AS Profit_Margin_Percentage,
ROUND((AVG(discount))*100,2) AS Average_Discount_Percentage
FROM SampleSuperstore
GROUP BY ship_mode
ORDER BY Total_Sales DESC;

-- =========================
-- 6. ### DISCOUNT ANALYSIS ### 
-- =========================

-- # 6.1 Profitability by Discount Level #
SELECT discount,
ROUND((SUM(profit) / NULLIF(SUM(sales), 0))*100,2) AS Profit_Margin_Percentage,
ROUND(sum(sales),2) AS Total_Sales,
ROUND(sum(profit),2) AS Total_Profit,
COUNT(DISTINCT order_id) AS Total_Orders,
sum(quantity) AS Total_Units_Sold
FROM SampleSuperstore
GROUP BY discount
ORDER BY discount ASC;

-- # 6.2 Discount Analysis by Category #
SELECT category,
ROUND(AVG(discount)*100,2) AS Average_Discount_Percentage,
ROUND(SUM(profit) / NULLIF(SUM(sales), 0)*100,2) AS Profit_Margin_Percentage,
ROUND(sum(sales),2) AS Total_Sales,
ROUND(sum(profit),2) AS Total_Profit,
COUNT(DISTINCT order_id) AS Total_Orders,
sum(quantity) AS Total_Units_Sold
FROM SampleSuperstore
GROUP BY category
ORDER BY Profit_Margin_Percentage DESC;

-- # 6.3 Discount Analysis by Sub-Category #
SELECT sub_category,
ROUND(AVG(discount)*100,2) AS Average_Discount_Percentage,
ROUND(SUM(profit) / NULLIF(SUM(sales), 0)*100,2) AS Profit_Margin_Percentage,
ROUND(sum(sales),2) AS Total_Sales,
ROUND(sum(profit),2) AS Total_Profit,
COUNT(DISTINCT order_id) AS Total_Orders,
sum(quantity) AS Total_Units_Sold
FROM SampleSuperstore
GROUP BY sub_category
ORDER BY Profit_Margin_Percentage DESC;

-- # 6.4 Discount Analysis by Region #
SELECT region,
ROUND(AVG(discount)*100,2) AS Average_Discount_Percentage,
ROUND(SUM(profit) / NULLIF(SUM(sales), 0)*100,2) AS Profit_Margin_Percentage,
ROUND(sum(sales),2) AS Total_Sales,
ROUND(sum(profit),2) AS Total_Profit,
COUNT(DISTINCT order_id) AS Total_Orders,
sum(quantity) AS Total_Units_Sold
FROM SampleSuperstore
GROUP BY region
ORDER BY Profit_Margin_Percentage DESC;

-- =========================
-- 7. ### ORDER ANALYSIS ###  
-- =========================

-- # 7.1 TOP 10 Orders by Sales #
SELECT order_id,
customer_name,
ROUND(sum(sales),2) AS Total_Sales,
ROUND(sum(profit),2) AS Total_Profit,
sum(quantity) AS Total_Units_Sold
FROM SampleSuperstore
GROUP BY order_id, customer_name
ORDER BY Total_Sales DESC
LIMIT 10;

-- # 7.2 10 Orders with the Highest Profit Margin #
SELECT order_id,
ROUND(sum(sales),2) AS Total_Sales,
ROUND(sum(profit),2) AS Total_Profit,
ROUND(sum(profit)/NULLIF(sum(sales),0)*100,2) AS Profit_Margin_Percentage
FROM SampleSuperstore
GROUP BY order_id, customer_name
HAVING Profit_Margin_Percentage = 50
LIMIT 10;

-- # 7.3 Top 10 Loss-Making Orders #
SELECT order_id,
ROUND(sum(sales),2) AS Total_Sales,
ROUND(sum(profit),2) AS Total_Profit,
ROUND(sum(profit)/NULLIF(sum(sales),0)*100,2) AS Profit_Margin_Percentage,
sum(quantity) AS Total_Units_Sold
FROM SampleSuperstore
GROUP BY order_id, customer_name
HAVING Total_Profit < 0
ORDER BY Total_profit ASC
LIMIT 10;

-- # 7.4 TOP 10 Orders by Number of Products #
SELECT order_id,
customer_name,
COUNT(DISTINCT product_name) AS Different_Products,
ROUND(sum(sales),2) AS Total_Sales,
ROUND(sum(profit),2) AS Total_Profit,
sum(quantity) AS Total_Units_Sold,
ROUND((SUM(profit) / NULLIF(SUM(sales), 0))*100,2) AS Profit_Margin_Percentage
FROM SampleSuperstore
GROUP BY order_id, customer_name
ORDER BY Different_Products DESC
LIMIT 10;

-- =========================
-- ### 8. TIME ANALYSIS ### 
-- =========================

-- # 8.1 TOP 10 Sales Days in 2016 #
SELECT order_date,
ROUND(sum(sales),2) AS Total_Sales,
ROUND(sum(profit),2) AS Total_Profit,
COUNT(DISTINCT order_id) AS Total_Orders,
ROUND(SUM(profit) / NULLIF(SUM(sales), 0)*100,2) AS Profit_Margin_Percentage
FROM SampleSuperstore
GROUP BY order_date
HAVING order_date LIKE '%2016%'
ORDER BY Total_Sales DESC
LIMIT 10;

-- # 8.2 TOP 10 Days by Profit Margin in 2014 #
SELECT order_date,
ROUND((SUM(profit) / NULLIF(SUM(sales), 0))*100,2) AS Profit_Margin_Percentage,
ROUND(sum(sales),2) AS Total_Sales,
ROUND(sum(profit),2) AS Total_Profit,
COUNT(DISTINCT order_id) AS Total_Orders,
SUM(quantity) AS Total_Units_Sold
FROM SampleSuperstore
GROUP BY order_date
HAVING order_date LIKE '%2014%'
ORDER BY Profit_Margin_Percentage DESC
LIMIT 10;

-- # 8.3 TOP 10 Loss Making Days in 2017 # 
SELECT order_date,
ROUND(sum(sales),2) AS Total_Sales,
ROUND(sum(profit),2) AS Total_Profit,
COUNT(DISTINCT order_id) AS Total_Orders,
SUM(quantity) AS Total_Units_Sold
FROM SampleSuperstore
GROUP BY order_date
HAVING order_date LIKE '%2017%'
AND Total_Profit < 0
ORDER BY Total_Profit ASC
LIMIT 10;

-- # 8.4 January 2015 Daily Sales Performance #
SELECT order_date,
ROUND(sum(sales),2) AS Total_Sales,
ROUND(sum(profit),2) AS Total_Profit,
sum(quantity) AS Total_Units_Sold,
COUNT(DISTINCT order_id) AS Total_Orders,
ROUND((SUM(profit) / NULLIF(SUM(sales),0)) * 100, 2) AS Profit_Margin_Percentage,
ROUND(AVG(discount)*100,2) AS Average_Discount_Percentage
FROM SampleSuperstore
WHERE order_date LIKE '%/01/2015%'
GROUP BY order_date
ORDER BY Total_Sales DESC;

-- # 8.5 July 2015 Daily Sales Performance # 
SELECT order_date,
ROUND(sum(sales),2) AS Total_Sales,
ROUND(sum(profit),2) AS Total_Profit,
sum(quantity) AS Total_Units_Sold,
COUNT(DISTINCT order_id) AS Total_Orders,
ROUND((SUM(profit) / NULLIF(SUM(sales),0)) * 100, 2) AS Profit_Margin_Percentage,
ROUND(AVG(discount)*100,2) AS Average_Discount_Percentage
FROM SampleSuperstore
WHERE order_date LIKE '%/07/2015%'
GROUP BY order_date
ORDER BY Total_Sales DESC;


