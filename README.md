# 📊 End-to-End Sales Data Pipeline

## 🔎 Project Overview
This project demonstrates a complete data pipeline from raw CSV data to an interactive Business Intelligence dashboard.

**Tech Stack:**
- Python (Pandas, psycopg2)
- PostgreSQL
- Power BI

---

## 🏗 Architecture
CSV → Python Cleaning → PostgreSQL (Star Schema) → Power BI Dashboard

---

## 🧹 Phase 1: Data Cleaning (Python)

- Removed duplicates
- Converted date columns
- Handled missing values
- Created derived columns (Year, Month, Shipping Days)

Notebook:
notebooks/01_data_cleaning.ipynb

---

## 🗄 Phase 2: Data Warehouse (PostgreSQL)

### ⭐ Star Schema Model

**Dimension Tables**
- dim_customer
- dim_product
- dim_date

**Fact Table**
- fact_sales

Schema File:
sql/schema.sql

---

## 🔄 ETL Process

Data loaded into PostgreSQL using psycopg2.

Notebook:
notebooks/02_etl_to_postgres.ipynb

---

## 📈 Phase 3: Power BI Dashboard

Features:
- KPI Cards (Sales, Profit, Margin)
- Sales Trend Analysis
- Category Breakdown
- Interactive Slicers

File:
powerbi/sales_dashboard.pbix

---

## 📊 ERD Diagram
![ERD](
https://github.com/sadishshakya-ops/end-to-end-sales-data-pipeline/blob/6086d226fd8071d8fdda431d27b68f6601e3e04d/Screenshot%202026-02-03%20135811.png)

---

## 📸 Dashboard Preview
![Dashboard](images/dashboard_screenshot.png)

---

## 📌 Key Insights

- Technology category is most profitable
- High discounts reduce profit margins
- West region performs best

---

## 🎯 Business Recommendation

Optimize discount strategy to improve profitability in loss-making categories.

---

## 👨‍💻 Author
Sadish Shakya
