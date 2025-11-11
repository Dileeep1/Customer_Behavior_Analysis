Customer Behavior Analysis

An end-to-end customer analytics project combining Python, SQL, and Power BI to uncover key behavioral insights and revenue trends.

📊 Project Overview

This project analyzes customer transactions and purchasing patterns to discover what drives sales, discounts, and loyalty.
It demonstrates how data storytelling can guide business decisions through analytics and visualization.

🔍 What’s Included

Power BI Dashboard – interactive visualization of key metrics

Python Jupyter Notebook – cleaning, transformation & EDA

PostgreSQL SQL Queries – data aggregation and metric logic

📈 Key Insights

Revenue patterns by gender and age group

Impact of discounts on customer purchases

Spending comparison: Subscribers vs. Non-Subscribers

Top-rated products and popular categories

Customer segmentation – New / Returning / Loyal

Shipping type comparison – Standard vs. Express revenue impact

🛠️ Tech Stack
Tool	Purpose
Python (Jupyter Notebook)	Data cleaning, EDA, exporting CSVs
PostgreSQL (SQL)	Business logic, metric aggregation
Power BI	Visualization and storytelling
Pandas, Matplotlib, Seaborn	Data analysis and visualization
🚀 How to Run Locally
1. Clone the repo
git clone https://github.com/<your-username>/Customer_Behavior_Analysis.git
cd Customer_Behavior_Analysis

2. Set up Python environment
python -m venv venv
source venv/bin/activate      # macOS / Linux  
venv\Scripts\activate         # Windows
pip install -r requirements.txt

3. Run the Notebook
jupyter notebook


Open: Customer_behavior_analysis.ipynb

4. Execute SQL queries

Use customer_behavior_postgres.sql in PostgreSQL.
It contains all aggregation logic for:

Revenue by gender

Top products by rating

Discount analysis

Customer segmentation

Shipping comparison

5. Power BI Dashboard

Open Customer_Behavior_Dashboard.pbix in Power BI Desktop.
Connect it to your cleaned dataset and refresh visuals.

📂 Project Files
File	Description
Customer_behavior_analysis.ipynb	Python notebook for EDA & cleaning
Customer_Behavior_Dashboard.pbix	Power BI dashboard
customer_behavior_postgres.sql	SQL queries for metrics and segmentation
📸 Dashboard Preview

(Add screenshot or Power BI Public link here once published)
Example:
🔗 View Interactive Dashboard

💡 Possible Improvements

Add Cohort Retention Analysis and LTV prediction

Schedule automatic ETL refreshes using Airflow/dbt

Integrate Power BI Gateway refresh for live data

👤 Author

Dilip Goud
📍 Data Analyst | Power BI | SQL | Python
🔗 LinkedIn

💻 GitHub

📜 License

This project is licensed under the MIT License — feel free to use and modify with credit.
