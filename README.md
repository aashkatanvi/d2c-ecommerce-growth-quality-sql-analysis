Growth Quality Analysis — D2C E-commerce (SQL Case Study)
📌 Overview

This project evaluates whether revenue growth in a D2C e-commerce model reflects healthy expansion or is primarily volume-driven.

Using 1M+ transactional records from the Brazilian Olist dataset, I performed structured SQL analysis across:

Customer segmentation

Revenue concentration

Category performance

City-level efficiency

Time-based growth trends

Freight cost pressure

The goal was to assess growth quality and identify structural risks beyond top-line revenue performance.

🧩 Business Problem

Although revenue increased over time, profitability and operational efficiency did not improve proportionally.

Leadership lacked clarity on:

Whether growth is driven by repeat customers or one-time buyers

Whether revenue is concentrated among a small customer segment

Whether certain categories depend heavily on new buyers

Whether some cities generate volume without value efficiency

Whether logistics costs create hidden pressure

Without this visibility, strategic decisions around retention, expansion, and optimization remain uncertain.

📊 Analytical Framework

The analysis was structured in six layers:

Customer Segmentation – One-time vs Repeat buyers

Revenue Concentration – Distribution of revenue across customers

Category Patterns – Revenue split and repeat dependency by category

City-Level Efficiency – Revenue, order volume, AOV comparison

Time-Based Trends – Monthly revenue and order growth patterns

Freight Efficiency – Freight cost as a % of revenue by city

All revenue analysis includes only delivered orders to ensure transactional integrity.

🔎 Key Findings
1️⃣ Growth Structure

Revenue growth is volume-driven. Order count increased over time while average order value remained stable.

2️⃣ Customer Structure

Revenue is heavily dependent on one-time buyers. Repeat contribution remains limited.

3️⃣ Revenue Distribution

Revenue is broadly distributed across customers. No extreme dependency on a small high-value segment.

4️⃣ Category Dependency

High-revenue categories are primarily driven by one-time buyers, indicating limited repeat depth.

5️⃣ Geographic Efficiency

Large cities generate scale through order volume. High freight pressure is mostly concentrated in small, low-revenue cities.

6️⃣ Structural Risk

The business is structurally dependent on continuous customer acquisition. Without stronger retention or higher order value, long-term sustainability may face pressure.

⚠ Limitations

No product cost or margin data available

No marketing or acquisition cost information

No demographic or channel data

Early 2016 data is partial and may not reflect true business performance

Profitability was assessed using proxies such as AOV, repeat behavior, and freight burden.

🛠 Tools Used

PostgreSQL

Window functions

CTEs

Aggregations & ranking

Order-level and item-level modeling

📂 Repository Structure
sql/
├── 01_customer_segmentation.sql
├── 02_revenue_concentration.sql
├── 03_category_analysis.sql
├── 04_city_efficiency.sql
├── 05_time_trend.sql
├── 06_freight_efficiency.sql

dashboards/
├── revenue_structure.pdf
├── revenue_concentration.pdf
├── category_analysis.pdf
├── city_efficiency.pdf
├── time_trend.pdf
├── freight_efficiency.pdf
