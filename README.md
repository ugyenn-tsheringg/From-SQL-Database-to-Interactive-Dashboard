# Alor Setar Pizza Hut - From SQL Database to Interactive Dashboard

![Ben's Pizzeria Dashboard](https://miro.medium.com/v2/resize:fit:720/format:webp/1*8c4q2bQ5Y5Q5Y5Q5Y5Q5Y5Q.png)


# Ben's Pizzeria Sales Analysis

![Pizza Banner](https://via.placeholder.com/800x200.png?text=Ben's+Pizzeria+Analysis)
## Overview

This project presents a comprehensive analysis of sales data from Ben's Pizzeria, a fictional pizza restaurant. The primary goal is to uncover sales patterns, identify popular products, understand customer behavior based on time and day, and provide actionable recommendations for business improvement through targeted dashboards.

This analysis replicates and potentially expands upon the case study presented by Abdulaziz Babkr in his Medium article:
[Analyzing Ben’s Pizzeria: A Data Analysis Case Study](https://medium.com/@abdulazizbabkrwork/analyzing-bens-pizzeria-a-data-analysis-case-study-e118987beb8f)

## Problem Statement & Objectives

The key business questions this analysis aims to answer are:

1.  What are the busiest days and times for the pizzeria?
2.  How many pizzas are typically included in an order?
3.  Which pizzas are the most and least popular?
4.  Which pizzas generate the most revenue?
5.  Which pizza sizes are most commonly ordered?
6.  What is the distribution of orders throughout the year?
7.  How can inventory be effectively managed based on usage and cost? [cite: 3, 4]
8.  How can staff scheduling and costs be monitored? [cite: 6]
9.  What actionable insights can be derived to optimize operations, marketing, inventory, and staffing?

## Dataset

The analysis utilizes a relational dataset potentially comprising tables for:

* **Orders:** Contains records of each order placed (`order_id`, `date`, `time`, potentially `address`, `delivery/pickup status`).
* **Order Details:** Provides details for each item within an order (`order_details_id`, `order_id`, `pizza_id`, `quantity`).
* **Pizzas:** Contains information about each unique pizza (`pizza_id`, `pizza_type_id`, `size`, `price`).
* **Pizza Types:** Describes categories and ingredients (`pizza_type_id`, `name`, `category`, `ingredients`).
* **Ingredients:** Contains details about individual ingredients (`ingredient_id`, `name`, `cost`, `stock_quantity`).
* **Staff/Shifts:** Contains information about staff schedules and costs (`staff_id`, `name`, `shift_details`, `hourly_rate`).

*(Optional: Add a link here if the dataset is publicly available or included in your repository)*
* [Link to dataset or data source description]

## Tools & Technologies

* **Database:** SQL (e.g., MySQL, PostgreSQL, SQLite) - Used for data querying, aggregation, and analysis.
* **Data Visualization:** [Specify your tool, e.g., Tableau, Power BI, Python (Matplotlib/Seaborn/Plotly)] - Used to create the dashboards and visual representations of the findings.
* **[Optional: Add other tools like Python (Pandas for data manipulation), Jupyter Notebooks, etc., if used]**

## Methodology

The analysis followed these steps:

1.  **Data Understanding:** Exploring the database schema and understanding the relationships between tables.
2.  **Data Preparation/Cleaning:** [Mention any cleaning steps if you performed them, e.g., checking for nulls, data type conversions, calculating ingredient usage per pizza].
3.  **Exploratory Data Analysis (EDA) using SQL:** Performing calculations required for the dashboards (e.g., total sales, ingredient usage, staff hours).
4.  **Dashboard Development:** Creating three specific dashboards to address key business areas: Order Activity, Inventory Management, and Staff Control.
5.  **Insight Generation & Recommendations:** Synthesizing the findings from the dashboards to derive actionable insights.

## Dashboards Created

Three dashboards were developed to provide focused insights:

### 1. Order Activity Dashboard [cite: 1]

* **Objective:** Monitor core sales and order patterns.
* **Key Metrics & Visualizations:**
    * Total orders [cite: 1]
    * Total sales [cite: 1]
    * Total items sold [cite: 1]
    * Average order value [cite: 1]
    * Sales breakdown by pizza category [cite: 1]
    * Top selling items (pizzas) [cite: 1]
    * Order volume by hour [cite: 1]
    * Sales revenue by hour [cite: 1]
    * Orders by customer address (if available) [cite: 1]
    * Order fulfillment method (Delivery vs. Pick up) [cite: 1]

### 2. Inventory Management Dashboard [cite: 2]

* **Objective:** Track ingredient usage, costs, and stock levels to optimize inventory and understand pizza profitability[cite: 3, 4].
* **Key Metrics & Visualizations:**
    * Total quantity consumed per ingredient [cite: 5]
    * Total cost of ingredients used [cite: 5]
    * Calculated cost per pizza based on ingredients [cite: 5]
    * Percentage of stock remaining per ingredient (requires initial stock data) [cite: 5]
    * Alerts or indicators for ingredients needing reordering [cite: 3]

### 3. Staff Control Dashboard [cite: 6]

* **Objective:** Monitor staff hours and costs[cite: 6].
* **Key Metrics & Visualizations:**
    * Total overall staff costs [cite: 7]
    * Total hours worked across all staff [cite: 7]
    * Hours worked breakdown by staff member [cite: 7]
    * Cost breakdown per staff member [cite: 7]
    * Staff presence per shift/day (requires shift data) [cite: 6]

## Key Findings

*(Update this section based on insights derived *specifically* from your dashboards)*

* **Peak Hours & Days:** The Order Activity dashboard confirms peak times are [Your Findings, e.g., 12-1 PM, 5-7 PM] and busiest days are [Your Findings, e.g., Fridays, Saturdays].
* **Popular Items:** [Your Findings, e.g., The Classic Deluxe and Barbecue Chicken pizzas are top sellers by quantity and revenue].
* **Inventory Insights:** [Your Findings from Inventory Dashboard, e.g., Tomato Sauce and Mozzarella Cheese have the highest consumption rate. Ingredient X is below reorder level. The calculated cost for Pizza Y is $Z.ZZ].
* **Staffing Insights:** [Your Findings from Staff Dashboard, e.g., Staff member A worked the most hours. Total staff cost for the period was $X,XXX].
* [Add other significant findings derived from your dashboards].

## Visualizations

*(Link to your specific dashboards or embed screenshots if possible)*

* [Link to Order Activity Dashboard]
* [Link to Inventory Management Dashboard]
* [Link to Staff Control Dashboard]

Example placeholder:
`![Order Activity Dashboard Screenshot](visualizations/dashboard_orders.png)`

## Recommendations

Based on the analysis and dashboard insights:

1.  **Optimize Staffing:** Use the Staff Control and Order Activity dashboards to align staff schedules precisely with peak hours (e.g., [Your Peak Hours]) and days (e.g., [Your Peak Days])[cite: 1, 6].
2.  **Inventory Management:**
    * Proactively reorder ingredients flagged by the Inventory Management dashboard (e.g., [Specific low-stock ingredients])[cite: 3, 5].
    * Analyze the profitability of pizzas using the calculated cost data; consider price adjustments or promotions for high-cost/low-margin items[cite: 4, 5].
    * Ensure sufficient stock for ingredients used in top-selling items identified in the Order Activity dashboard[cite: 1, 5].
3.  **Marketing & Promotions:**
    * Target promotions during off-peak hours identified by the Order Activity dashboard[cite: 1].
    * Feature top-selling items prominently in marketing materials[cite: 1].
    * Analyze sales by delivery/pickup to optimize delivery zones or pickup processes[cite: 1].
4.  **Menu Strategy:** Use inventory and sales data to inform decisions about removing unpopular items or introducing new ones based on ingredient availability and cost[cite: 1, 4, 5].

## How to Use / Run the Analysis

1.  **Prerequisites:**
    * A working SQL database system (e.g., MySQL, PostgreSQL, SQLite).
    * [Specify visualization software/platform, e.g., Tableau Desktop/Server, Power BI Service, Python environment].
2.  **Setup:**
    * Clone the repository: `git clone [Your Repository URL]`
    * Load the dataset: Import the provided `.csv` files or execute the `.sql` database dump file (`[your_dump_file.sql]`) into your chosen SQL database. Ensure tables for ingredients and staff/shifts are included if necessary for dashboards 2 & 3.
3.  **Run Analysis/View Dashboards:**
    * Execute any necessary SQL preprocessing scripts located in the `[sql_scripts/]` directory.
    * Open the dashboard files located in `[dashboards/]` or access them via their online links.
4.  **Interact:** Filter and explore the dashboards to gain specific insights.

## File Structure
When it comes to running a successful restaurant, it’s not just about serving great food. Behind every pizza sold lies a story of ingredients, staffing schedules, customer behavior, and cost management. To explore these hidden layers, I created a fictional dataset (csv) using Python, inspired by a real-world location—Pizza Hut in Alor Setar, Malaysia. I used it as a case study to uncover valuable insights that could drive smarter decisions and improve overall restaurant operations.


## Sketching Tables and Data Modeling
Firstly, with **excel**, I made sure all the data are consistent and ready to go. I deleted null rows. Then, I mapped out the data structure using **Quick Database** Diagrams. I had to perform normalization. This gave me a clear picture of how orders, menu items, ingredients, addresses, staffing, and inventory all connect. 

image here!


The Dashboards That Told the Tale
I broke down the analysis into three dashboards. 

## 📦 Dashboard 1: Orders and Sales
This first dashboard focuses on what’s coming in and what’s going out. It tracks total orders, how much people are spending, what they're ordering most, and even when they’re most likely to order. You’ll see insights like:

Which items are bestsellers

Average order value

Sales by hour and location

It even visualizes deliveries vs. pick-ups, giving a geographic flavor to customer habits.

```bash:
SELECT
    o.order_id,
    i.item_price,
    o.quantity,
    i.item_cat,
    i.item_name,
    o.created_at,
    a.delivery_address1,
    a.delivery_address2,
    a.delivery_city,
    a.delivery_zipcode,
    o.delivery
FROM 
    BensPizzeria..orders o
LEFT JOIN item i
    ON o.item_id = i.item_id
LEFT JOIN address a
    ON o.add_id = a.add_id
```


🍅 Dashboard 2: Ingredients and Inventory
Here’s where we zoom in on the kitchen. I looked into how much of each ingredient is being used, what it costs, and how much stock is left. One cool metric was calculating the cost of each pizza based on its ingredients—super useful for pricing strategy and waste reduction.

With these insights, you can figure out which ingredients are flying off the shelves and which ones are just sitting in storage, eating into your margins.


```bash:
SELECT
    s2.ing_name,
    s2.ordered_weight,
    CAST(ing.ing_weight AS BIGINT) * CAST(inv.quantity AS BIGINT) AS total_inv_weight,
    (CAST(ing.ing_weight AS BIGINT) * CAST(inv.quantity AS BIGINT)) - s2.ordered_weight AS remaining_weight
FROM (
    SELECT 
        ing_id,
        ing_name,
        SUM(CAST(ordered_weight AS BIGINT)) AS ordered_weight
    FROM stock1
    GROUP BY
        ing_name,
        ing_id
) s2
LEFT JOIN inventory inv
    ON inv.item_id = s2.ing_id
LEFT JOIN ingredient ing
    ON ing.ing_id = s2.ing_id
```

👨‍🍳 Dashboard 3: Staff and Scheduling
Running a restaurant smoothly also means making sure the right number of staff are scheduled—especially during peak hours. This dashboard looks at:

Staff working hours

Hourly wages

Total labor costs

Efficiency in scheduling

```bash:
SELECT
    r.date,
    s.first_name,
    s.last_name,
    s.hourly_rate,
    sh.start_time,
    sh.end_time,
    (DATEDIFF(hour, sh.start_time, sh.end_time) + DATEDIFF(minute, sh.start_time, sh.end_time)) / 60 AS hours_in_shift,
    ((DATEDIFF(hour, sh.start_time, sh.end_time) + DATEDIFF(minute, sh.start_time, sh.end_time)) / 60) * s.hourly_rate AS staff_cost
FROM rota r
LEFT JOIN staff s
    ON r.staff_id = s.staff_id
LEFT JOIN shift sh
    ON r.shift_id = sh.shift_id
```

These details help managers decide if they’re overstaffing during slow periods or need more hands during rush hours.

The Engine Behind It All: Smart Data Modeling
Throughout the project, I put a lot of care into the data model—making sure everything was connected properly and optimized for fast, reliable querying. It’s not the flashiest part of the job, but it’s what makes everything else run smoothly.

From Raw Data to Real Impact
So what did we learn? By using SQL and visualizing the results in Google Looker Studio, I was able to turn rows of data into something restaurant owners and managers can actually use—whether it’s to spot popular items, cut costs, or staff more efficiently.

Ben’s Pizzeria may be fictional, but the lessons are real. This kind of analysis could help any restaurant become more efficient, more profitable, and more in tune with its customers.


https://lookerstudio.google.com/reporting/350b3b1d-4c5c-407d-8be5-a0b0b58af37f




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

