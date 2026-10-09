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

- The **West** was the strongest-performing region, generating the highest sales, profit, profit margin, and order volume.
- The **Central** region showed the weakest profitability despite generating more sales than the **South**, recording the lowest total profit and profit margin.
- The **West** had the lowest average discount, whereas **Central** had the highest average discount, which may suggest that higher discounting may contribute to weaker profitability.
- Despite the **South** generating lower sales than **Central**, the **South** achieved a higher total profit and profit margin while having a lower average discount, further highlighting the potential relationship between discounting and profitability. 

### 2.2 State Sales Performance

| **State** | **Total Sales** | **Total Profit** | **Profit Margin (%)** |
| --------- | --------------- | ---------------- | --------------------- |
| California | $457,687.63 | $76,381.39 | 16.69% |
| New York | $310,876.27 | $74,038.55 | 23.82% |
| Texas | $170,188.05 | -$25,729.36 | -15.12% |
| Washington | $138,641.27 | $33,402.65 | 24.09% |
| Pennsylvania | $116,511.91 | -$15,559.96 | -13.35% |
| North Dakota | $919.91 | $230.15 | 25.02% |
| West Virginia | $1,209.82 | $185.92 | 15.37% |
| Maine | $1,270.53 | $454.49 | 35.77% |
| South Dakota | $1,315.56 | $394.83 | 30.01% |
| Wyoming | $1,603.14 | $100.20 | 6.25% |

- **California** was the strongest state, generating the highest total sales and total profit, while **New York** achieved a higher profit margin.
- **Texas** and ** Pennsylvania ** stand out as underperformers, as both were among the 5 highest states for sales but generated negative profits and profit margins, suggesting that higher sales do not translate to higher profitability.
- **North Dakota** generated the lowest sales but maintained a positive profit margin, indicating that low sales volume does not equate to poor profitability.
- **Maine** was particularly notable, recording relatively low sales while achieving the highest profit margin among the states at **35.77%**.

### 3. Product Analysis
### 3.1 Category Analysis
### 3.1 Category Performance

| **Category** | **Total Sales** | **Total Profit** | **Total Orders** | **Profit Margin (%)** | **Average Discount (%)** | **Highest Individual Sale** | **Lowest Individual Profit** |
| ------------ | --------------: | ---------------: | ---------------: | --------------------: | -----------------------: | --------------------------: | ---------------------------: |
| Technology | $836,154.03 | $145,454.95 | 1,544 | 17.40% | 13.23% | $22,638.48 | -$6,599.98 |
| Furniture | $741,999.80 | $18,451.27 | 1,764 | 2.49% | 17.39% | $4,416.17 | -$1,862.31 |
| Office Supplies | $719,047.03 | $122,490.80 | 3,742 | 17.04% | 15.73% | $9,892.74 | -$3,701.89 |

- **Technology** was the strongest-performing category overall, generating the highest total sales, profit, and profit margin despite having the fewest orders.
- **Furniture** significantly underperformed in profitability. Even though it generated substantial sales and more orders than **Technology**, its profit margin was only **2.49%**, which is considerably below **Technology** and **Office Supplies**.
- **Office Supplies** recorded the highest number of orders but the lowest total sales, suggesting that its orders tend to be lower in value compared with other categories.
- **Technology** had the lowest average discount but the highest profit margin, whereas **Furniture** had the highest average discount but the lowest profit margin. This highlights a potential relationship between discount and profit margin. 
- Furthermore, **Technology** also recorded both the highest individual sale and the largest individual profit loss, demonstrating that strong overall profitability can coexist with substantial losses on individual transactions. 

### 3.2 Technology Sub-Category Performance

| **Category** | **Sub-Category** | **Total Sales** | **Total Profit** | **Total Orders** | **Profit Margin (%)** | **Average Product Sale** | **Average Product Profit** |
| ------------ | ---------------- | --------------: | ---------------: | ---------------: | --------------------: | -----------------------: | -------------------------: |
| Technology | Phones | $330,007.05 | $44,515.73 | 814 | 13.49% | $371.21 | $50.07 |
| Technology | Machines | $189,238.63 | $3,384.76 | 112 | 1.79% | $1,645.55 | $29.43 |
| Technology | Accessories | $167,380.32 | $41,936.64 | 718 | 25.05% | $215.97 | $54.11 |
| Technology | Copiers | $149,528.03 | $55,617.82 | 68 | 37.20% | $2,198.94 | $817.91 |

- **Copiers** generated the highest total profit and profit margin despite having the fewest orders, suggesting a potential opportunity to increase sales volume while maintaining strong profitability.
- **Phones** generated the highest total sales and order value; however, their profit margin was lower than **Accessories** and **Copiers**, illustrating that higher sales volume does not necessarily imply greater profitability.
- **Machines** recorded the second-highest total sales but the lowest profit margin of 1.79%. Despite having the highest average product sale of **$1645.55**, their average product sale was the lowest of **$29.43**, suggesting potential inefficiencies in pricing and costs that warrant further investigation. 
- **Accessories** demonstrated strong profitability, generating a similar total profit to **Phones** despite its considerably low sales, supported by a higher profit margin of **25.05%**

