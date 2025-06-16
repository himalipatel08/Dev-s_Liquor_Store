# 🛒 Liquor Store Sales & Customer Insights | SQL + Python + Tableau

This project delivers comprehensive sales and customer behavior insights for a liquor store using a year’s worth of transaction data. By combining **SQL**, **Python**, and **Tableau**, the analysis uncovers key revenue trends, seasonal and demographic patterns, and the impact of promotions and holidays—enabling data-driven decisions for inventory, marketing, and pricing strategy.

---

## 🔍 Project Overview

- 🎯 **Goal:** Help the store owner and managers understand top-performing products, customer preferences, and promotional effectiveness.
- 📁 **Data Source:** Cleaned transactional dataset (CSV) with customer demographics, dates, payment methods, and discount fields.
- 🛠 **Tools Used:** 
  - **SQL** for querying and aggregating performance metrics
  - **Python (Pandas)** for data cleaning and EDA
  - **Tableau** for building four interactive dashboards
  - **BRD** (Business Requirement Document) for scoping and planning

---

## 📌 Business Objectives

- Identify **top-selling and underperforming** product categories and brands
- Analyze how **age, gender, and payment method** affect purchasing patterns
- Measure **monthly/holiday/seasonal revenue trends**
- Quantify **revenue loss due to discounts**
- Segment customers based on **volume and spending behavior**
- Build **interactive dashboards** for stakeholder decision-making

---

## 🧹 Data Cleaning Highlights

- ✅ Imported and cleaned over **1,000 transactions** from a CSV dataset
- 📤 Removed missing and duplicate values
- 📅 Formatted date fields to extract **Month**, **Weekday**, and **Holiday indicator**
- 👥 Created **customer age groups** and gender labels
- 💲 Calculated derived fields: `Net Amount`, `Discount Amount`, `Is_Weekend`, etc.

---

## 🧠 SQL Analysis Highlights

Key queries and insights from the `Liquor Store.sql` script:

- 🔝 **Top 5 Brands by Revenue** per category
- 📉 **Bottom 3 Brands** with lowest sales
- 📊 **Revenue breakdown by:**
  - Month
  - Day of week
  - Holiday vs. Non-holiday
  - Weather condition
- 🧾 **Customer segmentation** by:
  - Age group
  - Payment method
  - Transaction volume
- 💸 **Discount impact**: revenue loss and % discount across categories
- 📈 **Average revenue per transaction** and cumulative trend

---

## 📊 Tableau Dashboards (from `.twb` file)

1. **Sales Performance Overview Dashboard**  
   - Total revenue, units sold, top brands
   
![image](https://github.com/user-attachments/assets/99dc3c88-c41a-495a-a6df-67ff9ae94f97)

2. **Customer Demographics & Preferences Dashboard**  
   - Gender & age breakdown with average spend

![image](https://github.com/user-attachments/assets/92ca942e-7db8-4717-9c5a-7b647f21c60f)

3. **Promotions & Seasonal Trends Dashboard**  
   - Discount impact on sales, lost revenue insights
  
![image](https://github.com/user-attachments/assets/1ee88d87-ac19-4e94-a67b-079acd16c7cb)

4. **Product Performance Dashboard**  
   - Revenue patterns across months, weekdays, and holidays

![image](https://github.com/user-attachments/assets/291b6d62-c954-41d8-9655-77604f76c172)


📌 *All dashboards align with BRD user stories and success metrics.*

---

## 🗂 Project Files

| File | Description |
|------|-------------|
| `BRD.docx` | Business Requirement Document with objectives, user stories, and success metrics |
| `cleaned_dataset.csv` | Cleaned transactional data ready for SQL and visualization |
| `Liquor Store.sql` | SQL queries for deriving insights |
| `Liquor_Store Data.ipynb` | Python notebook for data cleaning and exploration |
| `Liquor store.twb` | Tableau workbook with 4 fully interactive dashboards |

---

## 🚀 Outcomes & Success Metrics

| Metric | Result |
|--------|--------|
| 🎯 Top Brands Identified | ✅ Top 5 brands per category listed |
| 💸 Discount Impact | ✅ Revenue loss calculated and visualized |
| 👥 Customer Segments | ✅ Grouped by age & volume (High vs. Low) |
| 📅 Holiday Analysis | ✅ Seasonality and promotional trends visualized |
| 📊 Dashboard Decisions | ✅ Dashboards support at least 3 stakeholder goals |

---

## 📬 Contact

**Himali Patel**  
📧 himalipatel0895@gmail.com 

🔗 [LinkedIn](https://www.linkedin.com/in/himalipatel) 


