# Financial Performance Analysis

## Overview

This project presents an end-to-end financial performance analysis focused on understanding **revenue, expenses, profit, and profit margins** across quarterly periods.
The goal is to transform raw financial data into **clear, stakeholder-ready insights** that support better financial decision-making.

The analysis mirrors how a data analyst would approach real-world business data: from data preparation and SQL querying to insight generation and visualisation.

---

## Business Questions Addressed

* How does revenue, expense, and profit trend across quarters?
* Which quarters deliver the strongest profit margins?
* Are expenses growing proportionally with revenue?
* What high-level insights can stakeholders quickly act on?

---

## Dataset Description

The project uses two primary datasets:

* **Income data**: captures actual revenue values by date
* **Expense data**: captures actual expense values by date

Both datasets are structured at a transactional level and aggregated for quarterly analysis.

---

## Tools & Technologies

* **SQL (Azure SQL / T-SQL)** – data aggregation, joins, and calculations
* **Excel** – analysis validation and dashboard-style visualisations
* **GitHub** – version control and project documentation

---

## Methodology

1. Imported raw financial datasets into a SQL database
2. Cleaned and standardised date fields for time-based analysis
3. Aggregated revenue and expenses at a **quarterly level**
4. Calculated key metrics:

   * Total Revenue
   * Total Expenses
   * Profit
   * Profit Margin (%)
5. Validated outputs in Excel and visualised trends for clarity

---

## Key SQL Logic (High Level)

* Used `DATEPART(QUARTER, Date)` to group financial data by quarter
* Applied `SUM()` aggregations for revenue and expenses
* Derived profit and profit margin using calculated fields
* Ensured numerical accuracy using decimal-based calculations

---

## Insights Generated

* Profit margins remain relatively stable across quarters, indicating controlled cost management
* Revenue fluctuations have a direct but manageable impact on profit
* Expense trends suggest operational consistency rather than volatility

These insights can help stakeholders assess **financial health**, **cost discipline**, and **quarterly performance consistency**.

---

## Repository Structure

```
financial-performance-analysis/
│
├── data/          # Raw or cleaned datasets
├── sql/           # SQL queries used for analysis
├── dashboard/     # Excel dashboards or charts
├── insights/      # Summary of findings
└── README.md
```

---

## How to Use This Project

1. Review the SQL queries to understand data modelling and calculations
2. Explore the Excel visuals to see how insights are communicated
3. Use this project as a reference for building stakeholder-focused financial analyses

---

## Author

**Harish Thota**
Data Analyst | SQL | Excel | Business Analytics

---

## Notes

This project is designed to reflect **real-world financial analysis expectations**, focusing on clarity, accuracy, and business relevance rather than purely technical complexity.
