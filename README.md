# Ben's Pizzeria - Comprehensive Data Analysis Project

![Ben's Pizzeria Dashboard](https://miro.medium.com/v2/resize:fit:720/format:webp/1*8c4q2bQ5Y5Q5Y5Q5Y5Q5Y5Q.png)

## 📌 Overview

This end-to-end project demonstrates a complete data analysis workflow for Ben's Pizzeria, covering:
- SQL database design and implementation
- Complex query development
- Data analysis and visualization
- Interactive dashboard creation

The project serves as both a business analysis case study and a portfolio piece showcasing full-stack data analyst skills.

## 🛠️ Skills Demonstrated

### Database & SQL
- **Database Design**: Created bespoke relational database schema
- **Data Normalization**: Reduced redundancy through proper table relationships
- **Advanced SQL**: Complex queries with joins, aggregations, and subqueries
- **Database Management**: Table creation and data population

### Analysis & Visualization
- **Exploratory Data Analysis**: Uncovered key business insights
- **Data Transformation**: Prepared data for visualization
- **Dashboard Development**: Interactive BI dashboards
- **Storytelling**: Clear presentation of findings

## 🚀 Project Phases

### 1. Database Design & Implementation
**Database Schema**:

2. SQL Analysis Queries
Sales Analysis:


Inventory Management:


3. Interactive Dashboards
Dashboard Components:

Orders Dashboard:

Sales KPIs (orders, revenue, items)

Trend analysis by hour/day

Geographic order distribution

Product category performance

Inventory Dashboard:

Stock level monitoring

Ingredient cost analysis

Reorder alerts

Staff Dashboard:

Labor cost tracking

Shift scheduling

Productivity metrics

Dashboard Preview

🔧 Technologies Used
Category	Tools
Database	MySQL, Navicat, QuickDBD
Analysis	Python (Pandas, NumPy)
Visualization	Google Data Studio, Matplotlib
Version Control	Git, GitHub
📊 Key Insights
Sales Patterns:

Peak hours: 12-2pm (lunch), 5-7pm (dinner)

Weekends see 30% higher sales

Delivery accounts for 65% of orders

Product Performance:

Classic Deluxe is top seller (22% of revenue)

Large pizzas generate 45% of total sales


```markdown
# Data Analyst Portfolio Project - SQL | Step-by-Step Guide From SQL Database to Interactive Dashboard

## Overview

This project demonstrates the end-to-end process of building a data analyst portfolio piece using SQL. It covers designing and building a relational database for a pizzeria, writing custom SQL queries to analyze the data, and finally, connecting the database to a BI tool (Google Data Studio) to create interactive dashboards. This project showcases various skills required for working with SQL and data analysis, valuable for potential employers.

## Skills Demonstrated

*   **SQL Database Design**: Creating a bespoke relational database schema.
*   **Data Normalization**: Organizing data to reduce redundancy and improve efficiency.
*   **Writing Custom SQL Queries**: Extracting, transforming, and aggregating data using SQL.
*   **Database Management**: Creating a database and populating tables using a tool like Navicat.
*   **Connecting to BI Tools**: Integrating a SQL database with a business intelligence platform (Google Data Studio).
*   **Dashboard Creation**: Building interactive visualizations to monitor business performance.

## Project Phases

### 1. SQL Database Design and Build

*   **Scenario**: Designing a database for a takeout and delivery pizzeria (Ben's Pizzeria) focusing on customer orders, stock levels, and staff.
*   **Requirements Gathering**: Identifying the key data points to capture for each area (customer orders, stock, staff) based on the client's brief.
*   **Table Design**: Specifying the fields and data types for each table, starting with customer orders (item name, price, quantity, customer name, delivery address).
*   **Normalization**: Reducing data redundancy by creating separate tables for customers, delivery addresses, and products (menu items) and linking them using identifiers (primary and foreign keys).
    *   **Customer Table**: `customer ID` (PK), `first name`, `last name`.
    *   **Address Table**: `address ID` (PK), `delivery address 1`, `delivery address 2` (nullable), `delivery city`, `delivery zip code`.
    *   **Item (Product) Table**: `item ID` (PK), `SKU`, `item name`, `item category`, `item size`, `item price`.
    *   **Orders Table**: `row ID` (PK), `order ID`, `created at`, `item ID` (FK), `quantity`, `customer ID` (FK), `delivery method`, `address ID` (FK).
    *   **Recipe Table**: `recipe ID` (FK to item.SKU), `ingredient ID` (FK to ingredient.ingredient ID), `quantity`.
    *   **Ingredient Table**: `ingredient ID` (PK), `ingredient name`, `weight`, `price`.
    *   **Inventory Table**: `inventory ID` (PK), `item ID` (FK to ingredient.ingredient ID), `quantity`.
    *   **Staff Table**: `staff ID` (PK), `staff first name`, `staff last name`, `position`, `hourly rate`.
    *   **Shift Table**: `shift ID` (PK), `day of the week`, `start time`, `finish time`.
    *   **Rotor Table**: `row ID` (PK), `shift ID` (FK to shift.shift ID), `date`, `staff ID` (FK to staff.staff ID).
*   **Database Diagram**: Using a tool called Quick Database Diagrams (QuickDBD) to visually design the database and define table relationships.
*   **SQL Code Generation**: Exporting the SQL code (MySQL syntax in this case) from QuickDBD to create the database schema.
*   **Database Creation**: Creating a new database (Pizza DB) in a MySQL instance using a tool like Navicat.
*   **Table Creation**: Executing the generated SQL code to create the tables in the database.
*   **Data Population**: Importing data into the tables, for example, importing ingredient data from a CSV file using Navicat's import wizard.

### 2. Writing Custom SQL Queries

*   **Objective**: Creating SQL queries to generate views of the data needed for the dashboards.
*   **Orders Dashboard Queries**: Writing queries to calculate:
    *   Total orders (count distinct of `order ID`).
    *   Total sales (sum of `item price` \* `quantity`).
    *   Total items sold (sum of `quantity`).
    *   Sales by category (group by `item category`, sum of `item price` \* `quantity`).
    *   Top selling items (group by `item name`, sum of `item price` \* `quantity`, order by descending).
    *   Orders by hour (extract hour from `created at`, count `order ID`).
    *   Sales by hour (extract hour from `created at`, sum of `item price` \* `quantity`).
    *   Orders by address (joining orders and address tables).
    *   Orders by delivery method (group by `delivery method`, count `order ID`).
    *   Using table aliases (e.g., `o` for orders, `i` for item, `a` for address) to simplify query syntax.
    *   Employing `LEFT JOIN` to combine data from multiple tables (orders, item, address) based on foreign key relationships.
*   **Inventory Dashboard Queries**: Creating queries to determine:
    *   Total quantity by ingredient (joining orders, item, recipe, and ingredient tables, using aggregation and `GROUP BY`).
    *   Total cost of ingredients (multiplying order quantity by recipe quantity and unit cost, using a subquery to handle aggregated fields).
    *   Calculated cost of each pizza (multiplying recipe quantity by unit cost).
    *   Percentage stock remaining by ingredient (joining the result of ingredient usage with the inventory table, calculating remaining quantity).
    *   Creating a view (`stock_one`) from a custom SQL query for easier manipulation.
*   **Staff Dashboard Queries**: Writing queries to calculate:
    *   Staff cost per row (calculating the duration of each shift and multiplying by the hourly rate).
    *   Joining staff, rotor, and shift tables to retrieve relevant information.
    *   Using the `TIMEDIFF` function to calculate the difference between start and end times.

### 3. Interactive Dashboard Creation

*   **BI Tool**: Using Google Data Studio as the business intelligence platform.
*   **Data Source Connection**: Connecting Google Data Studio to the MySQL database (on Google Cloud in this example) using connection details (instance connection name, database name, username, password).
*   **Custom Queries in Data Studio**: Using the "Custom Query" option to directly use the SQL queries written in the previous phase as data sources for the dashboards.
*   **Data Source Schema Review**: Verifying and adjusting the data types of the fields in Data Studio.
*   **Dashboard Building**: Creating three separate dashboards:
    *   **Orders Dashboard**: Visualizing the order-related metrics using various chart types like scorecards (total orders, total sales, total items), donut chart (sales by category), bar chart (top selling items), line chart (orders and sales by hour), Google Maps bubble map (orders by address), and pie chart (orders by delivery method).
    *   **Inventory Dashboard**: Displaying ingredient and stock level information using tables, a scorecard (total ingredient cost), and conditional formatting to highlight ingredients needing reorder. Blending data from two different data sources into one table for better efficiency.
    *   **Staff Dashboard**: Showing staff-related metrics using scorecards (total staff cost, total hours worked) and a table (hours worked and cost per staff member). Applying a date filter to the page to align with the orders data.
*   **Calculated Fields in Data Studio**: Creating new metrics within Data Studio by performing calculations on existing fields (e.g., total sales, average order value, full address).
*   **Chart Configuration**: Customizing charts by selecting dimensions and metrics, adjusting aggregations (e.g., count distinct, sum), and setting sorting options.
*   **Conditional Formatting**: Applying rules to visually highlight data based on specific criteria (e.g., low stock levels).
*   **Dashboard Design**: Focusing on clear and effective data presentation rather than purely aesthetic elements. Organizing and resizing widgets for better readability. Adding report-level elements like a header and date range control for consistency across pages. Minimizing unnecessary titles and using axis titles where needed.
*   **Theme Application**: Applying a theme extracted from the restaurant's menu for branding.

## Tools Used

*   **Quick Database Diagrams (QuickDBD)**: For designing the database schema.
*   **MySQL**: As the relational database management system.
*   **Navicat**: A database administration tool used for creating the database, tables, and importing data.
*   **Google Data Studio**: As the business intelligence and dashboarding platform.
*   **Microsoft Excel**: For initial data organization and mockups.

## Getting Started (Optional)

Project files, including the SQL dump file to recreate the MySQL database and the SQL queries, may be available via a link in the video description. These files can be used to rebuild this project in your own environment.

## Contact/Feedback

For any questions or comments regarding this project, please refer to the comments section of the original YouTube video on the "Adam Finer - Learn BI Online" channel.
```

Operational Insights:

3 ingredients frequently below safety stock

Staff costs peak on Friday evenings

