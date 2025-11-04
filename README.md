# Business-Sales-SQL-Project
SQL-based Business Sales &amp; Employee Performance Analysis using MySQL
🧠 Business Sales & Employee Performance Analysis (MySQL Project)
📁 Project Overview

This SQL project analyzes company sales performance, employee efficiency, and business growth using realistic data.

🧱 Database Structure

Database: business_analysis

Tables:

employees → Employee details, region, manager, target

sales → Sales transactions (date, product, quantity, total amount)

📊 Data Details

20 Employees

200+ Sales transactions (Jan–Apr 2025)

⚙️ Concepts Covered

✅ Joins (INNER, LEFT)
✅ Aggregations (SUM, AVG, COUNT)
✅ CASE statements
✅ GROUP BY, ORDER BY
✅ Common Table Expressions (CTEs)
✅ Window Functions (RANK, ROW_NUMBER, LAG, LEAD)
✅ Views & Stored Procedures
✅ Temporary Tables
✅ Cohort & Tenure Analysis
✅ Business KPIs & Insights

🧩 Query Levels

Total Revenue

Region-wise Revenue

Product Revenue & Units

Top 5 Sales Transactions

Sales per Employee

Average Order Value

Monthly Revenue Trend

Target Achievement

% of Employees Meeting Target

Product Performance

Region × Month Revenue

Highest Single Sale

Contribution Share of Top Employees

Sales by Tenure

Rank Employees by Total Sales

Top Performer by Month

Month-over-Month Growth

3-Month Rolling Average

Custom Performance Score

Outlier Detection (Z-Score)

Monthly Employee View

Stored Procedure – Top Employees

Temporary Aggregated Table

Cohort / First-Sale Analysis

🧠 Custom Business Queries

Employee → Manager lookup

SELECT name, manager FROM employees WHERE name = 'Priya Sharma';


Manager → Team Members list

SELECT employee_id, name, department FROM employees WHERE manager = 'Raj Mehta';

💡 Business Insights Generated

Monthly and regional revenue tracking

Employee performance and target evaluation

Product profitability

New hire vs experienced employee performance

Outlier and growth analysis

🔗 Project Type

SQL Portfolio Project for Data Analyst / Business Intelligence roles.
