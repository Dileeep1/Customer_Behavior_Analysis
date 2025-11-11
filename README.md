# Customer Behavior Analysis

End-to-end customer analytics project using Python, SQL, and Power BI to uncover key behavioral insights and revenue trends.

## Project Overview
This project analyzes customer transactions and purchasing patterns to discover what drives sales, discounts, and loyalty. It demonstrates how data storytelling can guide business decisions through analytics and visualization.

## Key Insights
- Revenue patterns by gender and age group
- Impact of discounts on customer purchases
- Spending comparison: Subscribers vs. Non-Subscribers
- Top-rated products and popular categories
- Customer segmentation – New / Returning / Loyal
- Shipping type comparison – Standard vs. Express revenue impact

## Tech Stack
| Tool | Purpose |
|------|---------|
| Python (Jupyter Notebook) | Data cleaning, EDA, exporting CSVs |
| PostgreSQL | Business logic, metric aggregation |
| Power BI | Visualization and storytelling |
| Pandas, Matplotlib, Seaborn | Data analysis and visualization |

## How to Run Locally
```bash
git clone https://github.com/Dileeep1/Customer_Behavior_Analysis.git
cd Customer_Behavior_Analysis

# Set up Python environment
python -m venv venv

# macOS / Linux
source venv/bin/activate

# Windows
venv\Scripts\activate

# Install dependencies
pip install -r requirements.txt

# Run Jupyter Notebook
jupyter notebook
# Open Customer_behavior_analysis.ipynb
Execute SQL Queries

Use customer_behavior_postgres.sql in PostgreSQL. It contains aggregation logic for:

Revenue by gender

Top products by rating

Discount analysis

Customer segmentation

Shipping comparison

Power BI Dashboard

Open Customer_Behavior_Dashboard.pbix in Power BI Desktop. Connect it to your cleaned dataset and refresh visuals.

Project Files

Customer_behavior_analysis.ipynb – Python notebook for EDA & cleaning

Customer_Behavior_Dashboard.pbix – Power BI dashboard

customer_behavior_postgres.sql – SQL queries for metrics and segmentation

customer_shopping_behavior.csv – Sample dataset

Author

Dilip Goud – Data Analyst | Power BI | SQL | Python

License

This project is licensed under the MIT License.
