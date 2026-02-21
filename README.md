# 📊 Growth Quality Analysis in a D2C E-commerce Model

SQL case study evaluating growth structure, customer behavior, and structural risk using transactional data from the Brazilian E-Commerce Public Dataset (Olist).

---

## 🔎 Overview

This project evaluates whether revenue growth in a Direct-to-Consumer (D2C) e-commerce model reflects healthy expansion or is primarily volume-driven.

Using 1M+ transactional records, I conducted a structured SQL analysis across:

- Customer segmentation
- Revenue concentration
- Category-level dependency
- City-level efficiency
- Freight cost pressure
- Time-based trends

The objective was to understand whether growth reflects sustainable performance or hidden structural risk.

---

## 🧩 Business Problem

Although revenue has increased, profitability and operational efficiency have not improved proportionally.

Leadership lacks clarity on what is driving this pattern — whether it stems from:

- Customer behavior (acquisition vs retention)
- Product mix imbalance
- Geographic inefficiencies
- Order-level cost pressure

Without this visibility, decision-makers cannot confidently prioritize actions to improve long-term sustainability.

---

## 🛠 Analytical Approach

All analysis was performed using SQL (PostgreSQL-style syntax).

Key steps included:

- Segmenting customers into one-time vs repeat buyers
- Calculated order-level revenue by summing item prices and freight charges per order
- Ranking customers to evaluate revenue concentration
- Analyzing category revenue split by customer type
- Comparing city-level revenue, AOV, and freight %
- Evaluating monthly order and revenue trends

Only delivered orders were included in revenue calculations to ensure transactional accuracy.

Profitability was assessed using proxies such as:

- Average Order Value (AOV)
- Repeat purchase behavior
- Revenue concentration
- Freight as % of revenue

---

## 📌 Key Findings

### 1️⃣ Growth Structure  
Revenue growth is primarily driven by increasing order volume, while average order value remains stable. Growth is acquisition-led rather than retention-led.

### 2️⃣ Customer Structure  
One-time buyers contribute the majority of orders and revenue. The repeat customer base remains comparatively small.

### 3️⃣ Revenue Concentration  
Revenue shows moderate concentration: the top 10% of customers contribute 41% of total revenue, and the top 20% contribute 57%. While revenue is not dominated by a tiny elite segment, customer value is uneven and skewed toward higher-spending customers.

### 4️⃣ Category Dependency  
Several high-revenue categories are largely driven by one-time buyers, indicating limited repeat engagement in key segments.

### 5️⃣ Geographic Efficiency  
Major cities generate scale through order volume. High freight percentages are mostly limited to smaller cities with low revenue impact.

### 6️⃣ Structural Risk  
The business is heavily dependent on continuous customer acquisition. Without improving repeat purchasing or increasing order value, long-term growth sustainability may be exposed to acquisition cost pressure.

---

## ⚠ Limitations

- No product cost or full operational cost data  
- No marketing or customer acquisition cost data  
- No customer demographic attributes  
- Partial early-period data coverage (2016)

As a result, profitability is evaluated using behavioral and structural proxies rather than true margin analysis.

---

## 📂 Repository Structure

```
📁 sql/
   ├── 01_customer_segmentation.sql
   ├── 02_revenue_concentration.sql
   ├── 03_category_analysis.sql
   ├── 04_city_efficiency.sql
   ├── 05_time_trend.sql
   ├── 06_freight_efficiency.sql

📁 dashboards/
   ├── revenue_split.png
   ├── revenue_concentration_curve.png
   ├── category_revenue_split.png
   ├── repeat_revenue_share.png
   ├── aov_by_category.png
```

---

## 💡 Skills Demonstrated

- Complex multi-table joins  
- CTE-based query structuring  
- Window functions (RANK, cumulative revenue)  
- Revenue proxy modeling  
- Behavioral segmentation  
- Business-driven SQL analysis  

---

### 👤 Aashka Tanvi

SQL Case Study – Growth Quality Evaluation  
Built as an end-to-end analyst-style project focusing on business framing and structural risk assessment.

