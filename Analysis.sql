---- Executive Summary ----
SELECT sum(sales) AS Total_Sales, 
sum(profit) AS Total_Profits,
sum(quantity) AS Total_Quantities,
count(order_id) AS Total_Orders
FROM SampleSuperstore;

==========================
### REGIONAL ANALYSIS ###
==========================

---- State Analysis ----
SELECT state,
sum(sales) AS Total_Sales,
sum(profit) AS Total_Profit FROM SampleSuperstore
GROUP BY state
ORDER BY Total_Sales DESC;

---- Profit Margin Analysis by State ----
SELECT state,
sum(sales) AS Total_Sales,
sum(profit) AS Total_Profits,
round((sum(profit)/sum(sales))*100,2) AS Profit_Margin_Percentage FROM SampleSuperstore
GROUP BY state
ORDER BY Profit_Margin_Percentage DESC;
