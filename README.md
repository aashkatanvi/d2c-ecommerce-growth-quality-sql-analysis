# 📊 Growth Quality Analysis in a D2C E-commerce Model
SQL case study evaluating growth structure, customer behavior, and structural risk using transactional data from the Brazilian E-Commerce Public Dataset (Olist).

---

## 🔎 Overview

This project evaluates whether revenue growth in a Direct-to-Consumer (D2C) e-commerce model reflects healthy expansion or is primarily volume-driven.

Using 1M+ transactional records, I conducted a structured SQL analysis across customer segmentation, revenue concentration, category-level dependency, city-level efficiency, freight cost pressure, and time-based trends.

The objective was to understand whether growth reflects sustainable performance or hidden structural risk.

---

## 🗂 Data Model Context

The dataset consists of multiple relational tables representing orders, customers, products, sellers, payments, reviews, and geolocation.

This analysis primarily utilized:

| Table | Usage |
|---|---|
| `order_items` | Item-level price and freight values |
| `orders` | Order status and timestamps |
| `customers` | Customer-level aggregation |
| `products` | Category-level analysis |
| `geolocation` | City-level efficiency analysis |

Revenue was calculated at the item level and aggregated to the customer level after filtering for delivered orders only.

---

## 🧩 Business Problem

Although revenue has increased, profitability and operational efficiency have not improved proportionally. Leadership lacks clarity on whether the issue stems from customer behavior, product mix imbalance, geographic inefficiencies, or order-level cost pressure.

Without this visibility, decision-makers cannot confidently prioritize actions to improve long-term sustainability.

---

## 🛠 Analytical Approach

All analysis was performed using SQL (PostgreSQL-style syntax). Only delivered orders were included in revenue calculations to ensure transactional accuracy.

Profitability was assessed using behavioral proxies:
- **AOV** — Average Order Value
- **Repeat purchase behavior** — One-time vs returning customers
- **Revenue concentration** — Customer-level revenue distribution
- **Freight %** — Freight cost as a share of revenue

---

## 📌 Key Findings

### 1️⃣ Customer Structure
One-time buyers contribute the majority of orders and revenue. The repeat customer base remains comparatively small, confirming growth is **acquisition-led rather than retention-led**.

![Revenue Structure by Customer Type](dashboard/Revenue%20structure%20by%20customer%20type.png)

---

### 2️⃣ Revenue Concentration
The top 10% of customers contribute **41% of total revenue**, and the top 20% contribute **54%**. Revenue is moderately concentrated, with value skewed toward higher-spending customers.

![Revenue Concentration Curve](dashboard/Revenue%20concentration%20curve.png)

---

### 3️⃣ Category Dependency
Several high-revenue categories are largely driven by one-time buyers, indicating **limited repeat engagement** in key segments.

![Category Revenue by Customer Type](dashboard/Category%20Revenue%20by%20Customer%20type.png)

---

### 4️⃣ Repeat Revenue Share
Repeat revenue remains low across all categories, with **no segment contributing more than 10%** from returning customers.

![Repeat Revenue Share by Category](dashboard/Repeat%20Revenue%20Share%20by%20category.png)

---

### 5️⃣ Order Value vs Volume
Revenue concentration across categories is driven more by **order volume** than by high average order value — confirming the business is scaling through acquisition, not through increasing customer value.

![AOV by Category](dashboard/AOV%20by%20category.png)

---

### 6️⃣ Structural Risk
The business is heavily dependent on continuous customer acquisition. Without improving repeat purchasing or increasing order value, long-term growth sustainability is exposed to **acquisition cost pressure**.

---

## ⚠ Limitations

- No product cost or full operational cost data available
- No marketing or customer acquisition cost data
- No customer demographic attributes
- Partial early-period data coverage (2016)

Profitability is therefore evaluated using behavioral and structural proxies rather than true margin analysis.

---

## 📂 Repository Structure
```
📁 sql/
   ├── 01_customer_segmentation.sql
   ├── 02_revenue_concentration.sql
   ├── 03_category_analysis.sql
   ├── 04_city_efficiency.sql
   ├── 05_time_trend.sql
   └── 06_freight_efficiency.sql

📁 dashboard/
   ├── Revenue structure by customer type.png
   ├── Revenue concentration curve.png
   ├── Category Revenue by Customer type.png
   ├── Repeat Revenue Share by category.png
   └── AOV by category.png
```

---

## 💡 Skills Demonstrated
- Multi-table joins across normalized transactional tables
- CTE-based query structuring
- Window functions — RANK, cumulative revenue
- Revenue proxy modeling
- Behavioral segmentation
- Business-driven SQL analysis

---

*👤 Aashka Tanvi — SQL Case Study: Growth Quality Evaluation*  
*Built as an end-to-end analyst-style project focusing on business framing and structural risk assessment.*
