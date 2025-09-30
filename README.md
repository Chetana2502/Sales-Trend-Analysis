# Sales Trend Analysis

**Repository**: [Sales-Trend-Analysis](https://github.com/Chetana2502/Sales-Trend-Analysis)  

---

## 📌 Project Overview
This project focuses on analyzing **online sales data** using SQL.  
The goal is to uncover patterns in revenue, orders, product categories, and regions, while identifying top-performing months and products.  

---

## 🔍 Achieved Results
Through SQL queries on the dataset, I was able to find:

- **Monthly Revenue & Order Volume**: Clear trends showing which months generate the most sales and activity.  
- **Top 3 Months by Revenue**: Pinpointed peak sales periods.  
- **Yearly Totals**: Annual comparisons of revenue, orders, and units sold.  
- **Average Order Value by Month**: Insights into spending behavior.  
- **Revenue by Product Category**: Categories like *Electronics* and *Apparel* emerged as strong drivers.  
- **Revenue by Region**: Identified regions with higher performance.  
- **Top 5 Products by Revenue**: Highlighted the products contributing most to revenue.  

---

## 🛠️ Tools & Methods
- **Database**: MySQL Workbench  
- **Data Import**: CSV → SQL via `LOAD DATA LOCAL INFILE` / Import Wizard  
- **SQL Concepts Used**:  
  - Aggregations (`SUM`, `COUNT`, `AVG`)  
  - Date functions (`YEAR()`, `MONTH()`)  
  - Filtering (`WHERE`, `HAVING`)  
  - Sorting (`ORDER BY`)  
  - Subqueries for advanced comparisons  

---

## 📊 Key Insights
- Sales show strong **seasonality**, with distinct peak months.  
- **Electronics** category dominates overall revenue.  
- Certain regions consistently outperform others → potential to scale campaigns there.  
- **Average order value** fluctuates by month, likely due to promotions or discounting.  

---

## ⚠️ Limitations
- Data is structured in a **single table**, so some richer joins (e.g., customer profiles, product hierarchies) couldn’t be explored.  
- Forecasting and deeper predictive analytics are not included here but can be added as an extension.  
- Results assume clean data (no nulls or malformed rows).  

---

## 🚀 How to Reproduce
1. Clone the repo:
   ```bash
   git clone https://github.com/Chetana2502/Sales-Trend-Analysis.git
2. Open MySQL Workbench.
3. Import the dataset (Online Sales Data.csv) into a table online_sales.
4. Run the queries from queries.sql
5. Review results in results/.
