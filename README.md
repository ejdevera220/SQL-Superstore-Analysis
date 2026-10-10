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
- **Machines** recorded the second-highest total sales but the lowest profit margin of 1.79%. Despite having the highest average product sale of **$1645.55**, their average product profit was the lowest of **$29.43**, suggesting potential inefficiencies in pricing and costs that warrant further investigation. 
- **Accessories** demonstrated strong profitability, generating a similar total profit to **Phones** despite its considerably low sales, supported by a higher profit margin of **25.05%**


### 4. Customer Analysis
### 4.1 Top 10 Customers by Sales

| **Customer Name** | **Total Sales** | **Total Profit** | **Total Orders** | **Profit Margin (%)** |
| ----------------- | --------------: | ---------------: | ---------------: | --------------------: |
| Sean Miller | $25,043.05 | -$1,980.74 | 5 | -7.91% |
| Tamara Chand | $19,052.22 | $8,981.32 | 5 | 47.14% |
| Raymond Buch | $15,117.34 | $6,976.10 | 6 | 46.15% |
| Tom Ashbrook | $14,595.62 | $4,703.79 | 4 | 32.23% |
| Adrian Barton | $14,473.57 | $5,444.81 | 10 | 37.62% |
| Ken Lonsdale | $14,175.23 | $806.85 | 12 | 5.69% |
| Sanjit Chand | $14,142.33 | $5,757.41 | 9 | 40.71% |
| Hunter Lopez | $12,873.30 | $5,622.43 | 6 | 43.68% |
| Sanjit Engle | $12,209.44 | $2,650.68 | 11 | 21.71% |
| Christopher Conant | $12,129.07 | $2,177.05 | 5 | 17.95% |

- **Tamara Chand** was the most profitable customer among the top 10 sales, generating the highest total profit and profit margin of **47.14%**, despite having fewer sales than **Sean Miller**
- Although **Sean Miller** generated the highest total sales, he was the only customer among the top 10 to record negative total profit and profit margins, highlighting again that high sales don't translate to high profit.
- **Ken Lonsdale** placed the most orders but generated relatively low total profit and a profit margin of just **5.69%**. In contrast, **Adrian Barton** also placed a lot of orders but achieved substantially higher profitability, suggesting that order frequency does not necessarily indicate greater profits.
- **Tom Ashbrook** placed the fewest orders but still generated strong total sales and a profit margin of **32.23%**, suggesting that customers with fewer orders can still contribute to profitability.

### 4.2 Top 10 Loss-Making Customers

| **Customer Name** | **Total Sales** | **Total Profit** | **Profit Margin (%)** | **Units Sold** |
| ----------------- | --------------: | ---------------: | --------------------: | -------------: |
| Cindy Stewart | $5,690.05 | -$6,626.39 | -116.46% | 40 |
| Grant Thornton | $9,351.21 | -$4,108.66 | -43.94% | 26 |
| Luke Foster | $3,930.51 | -$3,583.98 | -91.18% | 69 |
| Sharelle Roach | $3,233.48 | -$3,333.91 | -103.11% | 34 |
| Henry Goldwyn | $3,247.64 | -$2,797.96 | -86.15% | 68 |
| Nathan Cano | $2,218.99 | -$2,204.81 | -99.36% | 38 |
| Sean Braxton | $8,057.89 | -$2,082.75 | -25.85% | 84 |
| Sean Miller | $25,043.05 | -$1,980.74 | -7.91% | 50 |
| Christine Phan | $5,888.27 | -$1,850.30 | -31.42% | 59 |
| Natalie Fritzler | $8,322.83 | -$1,695.97 | -20.38% | 52 |
- **Cindy Stewart** generated the greatest total profit loss of **$6,626.39**, despite recording **$5,690.05** in sales. Both **Cindy Stewart** and **Sharelle Roach** recorded profit margins below **-100%**, indicating that their losses exceeded the revenue generated from their purchases.
- **Sean Miller** appeared in the Top 10 Customers by Sales but also in the Top 10 Loss-Making Customers analysis, further highlighting that high sales revenue does not equate to higher profitability.
- **Grant Thornton** generated a higher total profit loss than **Luke Foster**, despite having a lower profit margin loss of **-43.94%** compared to **-91.18%**. This highlights the distinction between absolute and relative losses, demonstrating that a greater monetary loss does not necessarily correspond to a worse profit margin.

### 5. Sales Analysis
### 5.1 Segment Performance

| **Segment** | **Total Sales** | **Total Profit** | **Total Orders** | **Total Units Sold** | **Profit Margin (%)** | **Average Discount (%)** |
| ----------- | --------------: | ---------------: | ---------------: | -------------------: | --------------------: | -----------------------: |
| Consumer | $1,161,401.34 | $134,119.21 | 2,586 | 19,521 | 11.55% | 15.81% |
| Corporate | $706,146.37 | $91,979.13 | 1,514 | 11,608 | 13.03% | 15.82% |
| Home Office | $429,653.15 | $60,298.68 | 909 | 6,744 | 14.03% | 14.71% |
- **Consumer** generated the highest total sales, total profit, orders, and total units sold, but recorded the lowest profit margin of **11.5  5%**
- Total sales and profit decreased alongside order volume across all segments, suggesting that higher order volume is associated with greater overall revenue and profit in this data set. 
- **Home Office** generated the lowest total sales and profit but achieved the highest profit margin **14.03%**, demonstrating that lower revenue does not necessarily indicate weaker relative profitability.
- **Home Office** also recorded the lowest average discount and the highest profit margin. This suggests that discounting may warrant further investigation, although the three segments do not establish a consistent relationship between discounts and profitability.

### 5.2 Ship Mode Performance

| Ship Mode | Total Sales | Total Profit | Total Orders | Total Units Sold | Profit Margin (%) | Average Discount (%) |
|---|---:|---:|---:|---:|---:|---:|
| Standard Class | $1,358,215.74 | $164,088.79 | 2,994 | 22,797 | 12.08% | 16.00% |
| Second Class | $459,193.57 | $57,446.64 | 964 | 7,423 | 12.51% | 13.89% |
| First Class | $351,428.42 | $48,969.84 | 787 | 5,693 | 13.93% | 16.46% |
| Same Day | $128,363.13 | $15,891.76 | 264 | 1,960 | 12.38% | 15.24% |
- **Standard Class** generated the highest total sales, total profit, orders, and units sold but recorded the lowest profit margin.
- Sales, total profit, order volume, and units followed the same chronological rankings, suggesting a potential link between higher order volumes and greater overall revenue and profit.
- **First Class** achieved the highest profit margin **13.93%** despite lower sales and profit than **Standard** and **Second** classes. It also recorded the highest average discount of **16.46%**, insinuating no consistent negative relationship between discounts and profitability across shipping methods.

### 6. Discount Analysis
### 6.1 Profitability by Discount Level

| Discount (%) | Profit Margin (%) | Total Sales | Total Profit | Total Orders | Total Units Sold |
|---:|---:|---:|---:|---:|---:|
| 0% | 29.51% | $1,087,908.47 | $320,987.60 | 2,644 | 18,267 |
| 10% | 16.61% | $54,369.35 | $9,029.18 | 89 | 373 |
| 15% | 5.15% | $27,558.52 | $1,418.99 | 51 | 198 |
| 20% | 11.82% | $764,594.37 | $90,337.31 | 2,407 | 13,660 |
| 30% | -10.05% | $103,226.65 | -$10,369.28 | 211 | 849 |
| 32% | -16.50% | $14,493.46 | -$2,391.14 | 27 | 105 |
| 40% | -19.81% | $116,417.78 | -$23,057.05 | 185 | 786 |
| 45% | -45.45% | $5,484.97 | -$2,493.11 | 10 | 45 |
| 50% | -34.80% | $58,918.54 | -$20,506.43 | 64 | 241 |
| 60% | -89.46% | $6,644.70 | -$5,944.66 | 127 | 501 |
| 70% | -98.66% | $40,620.28 | -$40,075.36 | 344 | 1,660 |
| 80% | -180.03% | $16,963.76 | -$30,539.04 | 250 | 1,188 |
- Higher discount levels were generally associated with lower profit margins, declining from **0%** discount with **29.51%** profit margin to **80%** discount with **-180.03%** profit margin. However, the relationship was not strictly linear.
- Between discount levels **0%** and **20%** generated positive total profits, whereas all discount levels of **30%** and above recorded losses, which may demonstrate that higher discounting is associated with weaker profitability.
- Sales and order volumes were concentrated at the **0%** and **20%** discount levels, with considerably lower volumes across most higher discount levels.
- The **70%** discount generated the highest total loss **$40,075.36**, while the **80%** discount recorded the lowest profit margin of **-180.03%**, indicating that total loss was approximately 1.8 times the sales revenue generated!

### 6.2 Discount Analysis by Sub-Category

| Sub-Category | Average Discount (%) | Profit Margin (%) | Total Sales | Total Profit | Total Orders | Total Units Sold |
|---|---:|---:|---:|---:|---:|---:|
| Labels | 6.87% | 44.42% | $12,486.31 | $5,546.25 | 346 | 1,400 |
| Paper | 7.49% | 43.39% | $78,479.21 | $34,053.57 | 1,191 | 5,178 |
| Envelopes | 8.03% | 42.27% | $16,476.40 | $6,964.18 | 249 | 906 |
| Copiers | 16.18% | 37.20% | $149,528.03 | $55,617.82 | 68 | 234 |
| Fasteners | 8.20% | 31.40% | $3,024.28 | $949.52 | 215 | 914 |
| Accessories | 7.85% | 25.05% | $167,380.32 | $41,936.64 | 718 | 2,976 |
| Art | 7.49% | 24.07% | $27,118.79 | $6,527.79 | 731 | 3,000 |
| Appliances | 16.65% | 16.87% | $107,532.16 | $18,138.01 | 451 | 1,729 |
| Binders | 37.23% | 14.86% | $203,412.73 | $30,221.76 | 1,316 | 5,974 |
| Furnishings | 13.83% | 14.24% | $91,705.16 | $13,059.14 | 877 | 3,563 |
| Phones | 15.46% | 13.49% | $330,007.05 | $44,515.73 | 814 | 3,289 |
| Storage | 7.47% | 9.51% | $223,843.61 | $21,278.83 | 777 | 3,158 |
| Chairs | 17.02% | 8.10% | $328,449.10 | $26,590.17 | 576 | 2,356 |
| Machines | 30.61% | 1.79% | $189,238.63 | $3,384.76 | 112 | 440 |
| Supplies | 7.68% | -2.55% | $46,673.54 | -$1,189.10 | 187 | 647 |
| Bookcases | 21.11% | -3.02% | $114,880.00 | -$3,472.56 | 224 | 868 |
| Tables | 26.13% | -8.56% | $206,965.53 | -$17,725.48 | 307 | 1,241 |
- Higher average discounts were generally associated with lower profit margins across subcategories, although exceptions such as **Binders** had the highest discount level of  **37.23%** with a decent profit margin of **14.86%**.
- **Labels** recorded the highest profit margin and lowest average discount, despite generating relatively low total sales of **12,486.31**, whereas **Tables** generated the lowest profit margin and the greatest total profit loss of **$17,725.48**, alongside a relatively high average discount of **26.13%**.
- **Binders** demonstrated the highest average discount of **37.23%**, total orders, and units sold, while maintaining a positive profit margin of **14.86%**, indicating that high discounts do not necessarily result in losses.  

### 7. Order Analysis 

### 7.1 Top 10 Loss-Making Orders

| Order ID | Total Sales | Total Profit | Profit Margin (%) | Total Units Sold |
|---|---:|---:|---:|---:|
| CA-2016-108196 | $5,016.55 | -$6,892.37 | -137.39% | 10 |
| US-2017-168116 | $8,167.42 | -$3,825.34 | -46.84% | 6 |
| CA-2014-169019 | $2,656.72 | -$3,791.16 | -142.70% | 31 |
| CA-2017-134845 | $2,613.31 | -$3,424.35 | -131.04% | 22 |
| US-2017-122714 | $1,889.99 | -$2,929.48 | -155.00% | 5 |
| CA-2017-131254 | $1,729.29 | -$2,330.27 | -134.75% | 14 |
| CA-2015-147830 | $4,190.21 | -$1,980.38 | -47.26% | 17 |
| CA-2014-139892 | $10,539.90 | -$1,878.79 | -17.83% | 37 |
| CA-2015-116638 | $4,297.64 | -$1,862.31 | -43.33% | 13 |
| CA-2016-130946 | $1,616.70 | -$1,790.27 | -110.74% | 17 |
- Order **CA-2016-108196** generated the greatest total loss **-$6,892.37** despite containing only 10 units, with a substantial negative profit margin of **-137.39%**.
- Order **US-2017-122714** recorded the worst profit margin of **-155.00%** and fewest units sold **5**. Five of the ten orders had profit margins below **-100%**, indicating that their losses exceeded the revenue generated.
- Order **CA-2014-139892** demonstrated the highest total sales **$10,539.90** and units sold **37** among the ten orders, but still recorded a loss of **$-1,878.79**, demonstrating that high sales revenue does not necessarily guarantee profitability. 

### 7.2 Top 10 Orders by Number of Products

| Order ID | Customer Name | Different Products | Total Sales | Total Profit | Total Units Sold | Profit Margin (%) |
|---|---|---:|---:|---:|---:|---:|
| CA-2017-100111 | Seth Vernon | 14 | $7,359.92 | $1,571.80 | 52 | 21.36% |
| CA-2017-157987 | Ann Chong | 12 | $2,255.87 | $297.82 | 40 | 13.20% |
| CA-2016-165330 | William Brown | 11 | $1,937.92 | $272.38 | 43 | 14.06% |
| US-2016-108504 | Paul Prost | 11 | $2,075.51 | $688.72 | 41 | 33.18% |
| CA-2015-131338 | Naresj Patel | 10 | $3,385.61 | $800.08 | 35 | 23.63% |
| CA-2016-105732 | Alejandro Grove | 10 | $2,374.73 | $696.29 | 46 | 29.32% |
| US-2015-126977 | Peter Fuller | 10 | $7,678.23 | $543.28 | 40 | 7.08% |
| CA-2014-106439 | Greg Guthrie | 9 | $1,007.94 | $122.54 | 45 | 12.16% |
| CA-2015-104346 | Irene Maddox | 9 | $730.04 | -$332.41 | 41 | -45.53% |
| CA-2015-132626 | Brian Thompson | 9 | $1,133.82 | $435.02 | 41 | 38.37% |
- **Seth Vernon** recorded the greatest product variety and highest total profit, achieving a positive profit margin of **21.36%**.
- Nine of the ten orders yielded positive profits, with **Irene Maddox** being the only loss-making order, recording a negative profit of **-45.53%**.
- **Brian Thompson** achieved the highest profit margin of **38.37%** despite purchasing only **9** products, demonstrating that greater product variety does not necessarily correspond with higher relative profitability.

### 8. Time Analysis 
### 8.1 Top 10 Sales Days in 2016

| Order Date | Total Sales | Total Profit | Total Orders | Profit Margin (%) |
|---|---:|---:|---:|---:|
| 10/2/2016 | $18,452.97 | $8,738.80 | 3 | 47.36% |
| 12/17/2016 | $12,185.13 | $4,654.00 | 5 | 38.19% |
| 5/23/2016 | $10,560.98 | $1,262.19 | 4 | 11.95% |
| 12/25/2016 | $10,488.06 | $1,393.40 | 8 | 13.29% |
| 4/16/2016 | $9,335.09 | $2,434.10 | 4 | 26.07% |
| 2/2/2016 | $8,996.78 | $2,753.71 | 3 | 30.61% |
| 3/13/2016 | $8,866.88 | -$543.33 | 6 | -6.13% |
| 11/26/2016 | $8,329.74 | $1,776.88 | 9 | 21.33% |
| 5/30/2016 | $8,090.58 | $1,778.00 | 10 | 21.98% |
| 11/25/2016 | $7,978.55 | -$6,247.40 | 7 | -78.30% |
- **October 2nd** was the strongest day, generating the highest total sales, profit, and profit margin, despite only recording only **3** orders.
- **March 13th** and **November 25th** were the only loss-making days with **November 25th** recording a substantial loss of **$6,247.40** and a negative profit margin **-78.30%**.
- **May 30th** simulated the highest number of orders of **10**, but generated considerably lower sales of **$8,090.58** than **October 2nd**, highlighting that higher order volumes do not necessarily translate into greater revenue.
- 4 of the 10 highest-sales days occured between **November** and **February**, suggesting some concentration during colder months. Despite this, the highest-performing day occurred in **October**, so no clear seasonal trends can be established.

### 8.2 Top 10 Sales Days in January 2015

| Order Date | Total Sales | Total Profit | Total Units Sold | Total Orders | Profit Margin (%) | Average Discount (%) |
|---|---:|---:|---:|---:|---:|---:|
| 1/28/2015 | $4,297.64 | -$1,862.31 | 13 | 1 | -43.33% | 40.00% |
| 1/27/2015 | $3,573.25 | -$191.64 | 12 | 2 | -5.36% | 32.50% |
| 1/30/2015 | $2,161.64 | $302.85 | 16 | 2 | 14.01% | 13.33% |
| 1/2/2015 | $1,932.10 | -$1,161.55 | 29 | 2 | -60.12% | 25.00% |
| 1/3/2015 | $1,768.22 | -$348.46 | 19 | 2 | -19.71% | 23.00% |
| 1/10/2015 | $1,018.10 | -$373.30 | 4 | 1 | -36.67% | 40.00% |
| 1/12/2015 | $854.61 | $62.80 | 16 | 2 | 7.35% | 26.67% |
| 1/13/2015 | $622.28 | $160.31 | 18 | 2 | 25.76% | 5.00% |
| 1/9/2015 | $364.07 | $131.08 | 13 | 1 | 36.00% | 0.00% |
| 1/17/2015 | $350.38 | -$300.05 | 17 | 3 | -85.63% | 26.67% |
- **28th** generated the highest total sales **$4,297.64** but recorded the greatest financial loss of **$1,862.31**, alongside a joint-highest average discount **40%**.
- **30th** displayed the highest total profit of **$302.85**, while **9th** achieved the highest profit margin **36%** with an average discount of **0%**, highlighting the distinction between absolute and relative profitability.
- **6** of the 10 highest-sales days recorded negative profits, with higher average discounts generally associated with lower profit margins. **17th** recorded the worst profit margin **-85.63%** alongside an average discount of **26.67%**.

## 9. Overall Conclusion
The Superstore generated approximately **$2.3 Million** in total sales and **$286,397** in profit, achieving an overall profit margin of **12.47%**. Although the business was profitable overall, performance varied considerably across regions, product categories, customers, and orders. **Technology** and the **West** region demonstrated overall strong profitability, while the **Furniture**, the **Central** region and several individual transactions recorded weaker financial performance. Furthermore, higher discount levels were generally associated with lower profit margins, suggesting that the business should prioritise profitability, pricing strategies, and loss reduction rather than focusing solely on sales growth. 

## 10. Business Recommendations
- **Review discounting strategies:** Investigate high-discount transactions, particularly those with discounts of **30%** and above, which consistently generated negative aggregate profits. Consider adjusting discount policies to protect profit margins.
- **Improve regional profitability:** Investigate weaker-performing areas, particularly the **Central** region, **Texas** and **Pennsylvania**, to identify potential issues with pricing, product mix and discounting.
- **Optimise product profitability:** Review pricing and costs within **Furniture**, particularly **Tables**, while exploring opportunities to increase sales of profitable subcategories such as **Copiers**.
- **Reduce loss-making transactions:** Investigate customers and orders generating substantial financial losses, and monitor both total profit and profit margins to support more profitable business decisions. 



