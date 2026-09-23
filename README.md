# Superstore Sales Analysis Using SQL

## Project Overview

This project analyses the Sample Superstore dataset using SQL to explore sales performance, profitability, customer behaviour, product performance, discounting and regional trends.

The aim of the project was to develop my SQL skills while using data to answer practical business questions and identify key trends that could support business decision-making. 

## Dataset
The Sample Superstore dataset contains transactional sales data, including information on: 

- Orders and Customers
- Products and product categories
- Sales and Profit
- Quantity sold
- Discounts
- Geographic regions
- Shipping Methods
- Order Dates

## Tools used: 
- SQL
- SQLITE
- Github

## SQL Skills Demonstrated: 
Throughout the project, I utilized: 

- Aggregate functions ("SUM", "AVG", "COUNT", "MIN", "MAX")
- "GROUP BY" and "ORDER BY"
- "LIMIT", "DISTINCT", "NULLIF"
- "WHERE" and "HAVING"
- Calculated Metrics such as Profit Margin

### Analysis Findings:

### 1. Executive Summary 
| Total_Sales | Total_Profits | Total_Units_Sold | Total_Orders |
| ----------- | ------------- | ---------------- | ------------ |
| 2297201     | 286397        | 37873            | 5009         |

- The Superstore generated **$2297201** Total Sales and accumulated **$286397** Profit
- A total of **5009** orders were placed, representing **37873** units sold.
- This resulted in an overall profit margin of approximately **12.47%**!
- These figures provide a baseline for the following analysis of geographical, product, customer, and sales performance.

### 2. Geographical Analysis
### 2.1 Region Performance
| Region | Total Sales | Total Profit | Profit Margin (%) | Total Orders | Average Discount (%) |
| ------ | ----------: | -----------: | ----------------: | -----------: | -------------------: |
| West | $725,457.82 | $108,418.45 | 14.94% | 1,611 | 10.93% |
| East | $678,781.24 | $91,522.78 | 13.48% | 1,401 | 14.54% |
| South | $391,721.91 | $46,749.43 | 11.93% | 822 | 14.73% |
| Central | $501,239.89 | $39,706.36 | 7.92% | 1,175 | 24.04% |

- The West was the strongest-performing region, generating the highest sales at approximately **$725,457.82**, as well as the highest total profit of **$108,418.45**, a profit margin **14.94%**, and the highest number of orders of ** 1,611 **.
- Central had the second lowest sales of **$501,239.89**, the lowest total profit of **$39,706.36**, and the lowest profit margin of **7.92%**.
- The West had the lowest average discount of **10.93%**, whereas Central had the highest average discount of **24.04%**, which may suggest that higher discounting may contribute to weaker profitability. 
- Comparing the South with Central, the South has lower sales of **$391,721.91**, has higher profit of **$46,749.43**, a higher profit margin of **11.93%**, and a lower average discount of **14.73%**, which further supports that discounting affects profitability.


