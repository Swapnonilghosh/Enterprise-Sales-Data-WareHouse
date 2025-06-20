## 📊 Data Warehouse & Analytics Project

This project demonstrates the end-to-end lifecycle of building a modern data warehouse and running advanced analytics on business data using **SQL Server (T-SQL)**. From ingesting raw datasets to designing a star schema and generating deep analytical insights — the project walks through real-world BI processes step by step.

### 🎯 Why this project?

In today’s data-driven world, organizations rely on clean and structured data to make decisions. This project simulates a realistic data pipeline to:

- design a layered architecture using the Medallion approach (bronze, silver, gold)
- implement ETL pipelines to process CRM (Customer Relationship Management) and ERP (Enterprise Resource Planning) data
- run exploratory and advanced SQL analysis for insights

### 🌐 Real-world context

A mid-sized company is trying to merge data from sales and customer systems to analyze:

- sales performance over time  
- customer behavior and segmentation  
- product-level revenue and profitability  
- key KPIs like recency, quantity sold, and AOV  

This project delivers those insights using SQL-powered data engineering and analytics.

---

## 🏗️ Data Architecture

The data architecture for this project follows Medallion Architecture **Bronze**, **Silver**, and **Gold** layers:
![Data Architecture](docs/Data_Architecture.drawio.png)

1. **Bronze Layer**: Stores raw data as-is from the source systems. Data is ingested from CSV Files into SQL Server Database.
2. **Silver Layer**: This layer includes data cleansing, standardization, and normalization processes to prepare data for analysis.
3. **Gold Layer**: Houses business-ready data modeled into a star schema required for reporting and analytics.

---

## 🧭 Project Overview

This project demonstrates a complete data warehousing and analytics pipeline using SQL Server. It focuses on transforming raw sales and customer data into clean, structured datasets that support deep business analysis.

The process includes:

- Designing a layered data warehouse using the Medallion Architecture (bronze, silver, gold)
- Implementing ETL pipelines to extract, clean, and load data from multiple source systems
- Building a star schema with fact and dimension tables for optimized analytical queries
- Running exploratory and advanced SQL analysis to extract meaningful insights from the gold layer

The analytics portion covers both EDA (Exploratory Data Analysis) and advanced techniques such as:

- Change-over-time and trend analysis  
- Cumulative and moving aggregates  
- Year-over-year product performance comparison  
- Customer segmentation (VIP, Regular, New)  
- Product performance classification (High, Mid, Low)

All logic is written in modular SQL scripts organized by purpose, making the pipeline reusable, transparent, and easy to maintain.

---

## 📋 Project Requirements

This project is split into two key domains — building the data warehouse (data engineering) and performing analysis (data analytics). Each component plays a role in transforming raw data into reliable business insights.

---

#### 1. 🏗️ Data Engineering — Building the Data Warehouse

**Objective:**  
Design and implement a modern data warehouse using SQL Server that integrates and transforms data from multiple business systems to support decision-making.

**Key Deliverables:**

- **Source Data Ingestion:**  
  - Load raw data from two business systems (ERP and CRM), both provided as CSV files.
  - Maintain the raw format in the bronze layer without transformation for auditability.

- **Data Quality & Cleansing:**  
  - Detect and handle missing values, inconsistent formats, and duplicates.
  - Standardize field values (e.g., country codes, date formats, product categories).

- **Data Transformation (Silver Layer):**  
  - Normalize and join related datasets (e.g., customer data from CRM + transaction data from ERP).
  - Ensure referential integrity between keys across tables.

- **Star Schema Modeling (Gold Layer):**  
  - Design and create fact and dimension tables.
  - Implement surrogate keys, date dimensions, and type consistency for fast querying.
  - Focus on a sales-centric star schema: `fact_sales` + related dimensions (`dim_customers`, `dim_products`, etc.)

- **Scope Consideration:**  
  - Work with the latest snapshot of data.
  - No requirement for historization or slowly changing dimensions in this project.

- **Documentation:**  
  - Prepare entity-relationship diagrams and flowcharts to explain the pipeline clearly.
  - Maintain a data catalog to define the structure and semantics of all tables and fields.

---

#### 2. 📊 Data Analytics — BI & Reporting

**Objective:**  
Use SQL to explore the cleaned data and generate business insights across customer, product, and sales domains.

**Analytical Scope:**

- **Exploratory Data Analysis (EDA):**  
  - Understand key fields, measures, and data ranges.  
  - Explore customer locations, product hierarchies, date coverage, and overall volume.

- **Business Metric Calculation:**  
  - Compute total revenue, order count, quantity sold, average selling price, customer base size, and more.

- **Breakdown Analysis:**  
  - Group metrics by category, region, gender, or customer/product segments.
  - Identify high-performing products or countries.

- **Trend & Time-Series Analysis:**  
  - Monitor how sales, customers, and orders evolve over time (monthly/yearly).
  - Analyze seasonality or spikes using trend reports.

- **Customer & Product Segmentation:**  
  - Classify customers as VIP, Regular, or New based on behavior and lifespan.
  - Segment products by revenue and cost ranges.

- **Performance Reporting:**  
  - Compare product performance year-over-year and against average performance.
  - Calculate KPIs like recency, lifespan, average order value, and monthly spending.

All analysis is done through raw SQL and written in modular scripts, structured for scalability and transparency.

---

## ⚙️ Tech Stack

This project is built entirely on SQL-based technologies and leverages industry-standard practices in data warehousing and analytics.

#### Core Tools & Platforms

- **SQL Server (SSMS):**
  - Used to create and manage the entire data warehouse.
  - Handles raw data ingestion, transformation pipelines, schema modeling, and analytical queries.

- **T-SQL (Transact-SQL):**
  - The primary language for data manipulation, transformation logic, and analytical computation.
  - Used for writing all ETL scripts and advanced analysis queries.

- **CSV Files (ERP and CRM):**
  - Flat files that serve as source systems for the warehouse.
  - Contain structured sales, customer, and product data.

- **draw.io (Diagrams):**
  - Used to design data flow diagrams, architecture blueprints, and entity-relationship models.
  - Helps document and visualize the data pipeline.

- **Markdown / GitHub:**
  - All documentation is written in Markdown for easy viewing.
  - Repository is organized with clear folder structures and script segregation.

#### Optional Tools (Not included in this project but compatible):

- **Power BI / Tableau / Excel:**  
  - The gold layer is designed to plug into any BI tool for dashboards and reports.
  - Dimensional modeling ensures compatibility with self-service analytics platforms.

---

## 📁 Repository Structure
```plaintext
data-warehouse-project/
│
├── datasets/                           # Raw datasets used for the project (ERP and CRM data)
│
├── docs/                               # Project documentation and architecture diagrams
│   ├── Data_Architecture.drawio        # Medallion architecture (Bronze, Silver, Gold)
│   ├── Data_Architecture.drawio.png
│   ├── Data Flow Diagram.drawio        # Full ETL/data movement pipeline
│   ├── Data Flow Diagram.drawio.png
│   ├── Integration Model.drawio        # How ERP & CRM data are merged and structured
│   ├── Integration Model.drawio.png
│   ├── Star Schema (Data Mart).drawio  # Final analytical data model for reporting
│   ├── Data Catalog.md                 # Describes tables, fields, types, and business meaning
│   ├── Naming Convention.md            # Consistent naming standards across tables and files
│
├── scripts/                            # SQL scripts for ETL and data modeling
│   ├── bronze/                         # Load raw ERP & CRM data into staging tables
│   ├── silver/                         # Clean, normalize, and join datasets for unified structure
│   ├── gold/                           # Build final fact and dimension tables (star schema)
│
├── tests/                              # Data quality checks (nulls, duplicates, referential integrity)
│
├── Analytics-script/                   # SQL scripts for business analysis and insights
│   ├── 1. EDA-analysis/                # Exploratory Data Analysis to understand structure and stats
│   │   ├── 0_Dimensions & Measures     # Quick scan of key fields like sales amount
│   │   ├── 1_Dimensions Exploration    # Explore countries, product hierarchy, etc.
│   │   ├── 2_Database Exploration      # Explore schema metadata (tables, columns)
│   │   ├── 3_Date Exploration          # Sales timeline and customer age range
│   │   ├── 4_Measures Exploration      # Total sales, quantity, orders, price, customers
│   │   ├── 5_Magnitude Analysis        # Breakdown by category, country, gender, etc.
│   │   ├── 6_Ranking Analysis          # Top/bottom products and customers by revenue
│   │
│   ├── 2. Advanced-analysis/           # Advanced analysis using KPIs, trends, and segmentation
│   │   ├── 1_Change_over_time_analysis # Track sales, customers, and quantity over time
│   │   ├── 2_Cumulative_Analysis       # Running totals and moving averages
│   │   ├── 3_Perfomance_Analysis       # YoY performance and comparison to product average
│   │   ├── 4_Part_to_Whole_Analysis    # % contribution of each category to total sales
│   │   ├── 5_Data_Segmentation         # Segments customers (VIP/Regular/New) and products by cost
│   │   ├── 6_Customer_Report           # Final view with detailed customer-level KPIs
│   │   ├── 7_Product_Report            # Final view with detailed product-level KPIs
│
├── README.md                           # Project overview, architecture, and instructions
└── LICENSE                             # License information (MIT)
```

---

## 🛡️ License

This project is licensed under the [MIT License](LICENSE). You are free to use, modify, and share this project with proper attribution.

---

## 🙋‍♂️ About Me

Hi, I’m **Swapnonil Ghosh**, a final-year ECE undergraduate at NIT Agartala with a passion for tech and problem-solving, currently exploring data analytics.  
Always eager to learn, build, and turn data into decisions.

Let’s stay in touch! Feel free to connect with me here:  
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/swapnonilg/)
