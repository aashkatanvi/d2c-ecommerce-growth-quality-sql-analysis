# D2C E-Commerce Growth Quality Analysis (SQL Case Study)

SQL case study evaluating whether revenue growth in a D2C e-commerce model reflects healthy expansion or volume-driven dependency, using 1M+ transactional records from the Olist dataset.

---

## Overview

This project investigates the structure behind revenue growth.  

While top-line revenue increased, leadership lacked clarity on whether growth was supported by retention strength, operational efficiency, and sustainable demand — or primarily driven by expanding order volume and new customer acquisition.

A structured SQL framework was used to analyze customer behavior, revenue concentration, category reliance, geographic performance, freight cost pressure, and time-based growth patterns.

---

## Business Problem

Despite increasing revenue, profitability and operational efficiency did not show proportional improvement.  

Leadership needed clarity on whether growth was:
- Retention-driven or acquisition-led  
- Supported by repeat purchasing depth  
- Concentrated among specific customers or broadly distributed  
- Efficient across categories and cities  

Without this visibility, long-term sustainability risk could not be assessed.

---

## Analytical Framework

The analysis was conducted in layered stages:

- Customer segmentation (one-time vs repeat buyers)  
- Revenue concentration analysis (cumulative distribution)  
- Category-level revenue and repeat contribution  
- Average order value evaluation  
- City-level revenue, scale, and freight burden  
- Monthly revenue and order trend analysis  

All queries were written using CTEs, aggregations, window functions, and structured joins in PostgreSQL.

---

## Executive Summary

### 1. Growth Structure  
Revenue expansion is primarily volume-driven, with increasing order counts and stable average order value.

### 2. Customer Structure  
One-time buyers contribute the majority of revenue, indicating acquisition-led growth with limited repeat depth.

### 3. Revenue Concentration  
Revenue is broadly distributed across customers, with no extreme reliance on a small high-value segment.

### 4. Category Risk  
High-revenue categories show limited repeat contribution, reinforcing dependency on new demand.

### 5. Structural Risk  
The business demonstrates scale growth but remains structurally dependent on continuous customer acquisition.

---

## Dashboard Highlights

- Revenue Structure by Customer Type  
- Revenue Concentration Curve  
- Repeat Revenue Share by Category  
- Average Order Value by Category  
- Category Revenue Contribution by Customer Type  

---

## Limitations

- No product cost or margin data available  
- No marketing or acquisition cost data  
- No demographic or channel-level customer data  
- Early 2016 period contains limited transactional coverage  

Profitability is assessed using behavioral and operational proxies rather than true margin calculations.

---

## Tools Used

- PostgreSQL (SQL)
- Window Functions & CTEs
- Zoho Analytics (Visualization)
- GitHub (Documentation & Versioning)

---

## Project Structure

```
d2c-ecommerce-growth-quality-sql-analysis/
│
├── sql/
│   ├── 01_customer_segmentation.sql
│   ├── 02_revenue_concentration.sql
│   ├── 03_category_analysis.sql
│   ├── 04_city_analysis.sql
│   ├── 05_time_trend_analysis.sql
│   └── 06_freight_efficiency_analysis.sql
│
├── dashboard/
│   ├── revenue_structure_by_customer_type.pdf
│   ├── revenue_concentration_curve.pdf
│   ├── repeat_revenue_share_by_category.pdf
│   ├── average_order_value_by_category.pdf
│   └── category_revenue_by_customer_type.pdf
│
└── README.md
```

---

## Core Insight

Revenue growth is strong in scale but structurally dependent on acquisition, with limited repeat purchasing depth to sustain long-term expansion without continuous order volume growth.


