# 📈 Indian Stock Market Analysis Using Python & MySQL

## 📌 Project Overview

This project focuses on analyzing historical Indian stock market data using **Python, MySQL, Pandas, Matplotlib, and Seaborn**.

The primary objective is to analyze stock price movements, daily returns, trading volumes, and sector-wise performance to identify meaningful patterns and insights from historical market data.

The project demonstrates an end-to-end data analytics workflow, including data cleaning, SQL-based analysis, data visualization, and insight generation.

## 🎯 Project Objectives

- Analyze historical stock market trends and price movements.
- Identify stocks with the highest and lowest closing prices.
- Evaluate daily returns and stock performance.
- Compare stock performance across different sectors.
- Analyze trading volumes and market activity.
- Apply SQL window functions, aggregations, and views.
- Create informative visualizations using Python.
- Generate meaningful insights from historical stock market data.

## 🛠️ Technologies Used

| Technology | Purpose |
|---|---|
| Python | Data processing and visualization |
| Pandas | Data cleaning and manipulation |
| NumPy | Numerical operations |
| MySQL | Data storage and SQL analysis |
| SQL | Data aggregation and analytical queries |
| Matplotlib | Data visualization |
| Seaborn | Statistical and analytical charts |
| Jupyter Notebook | Interactive analysis and visualization |

## 📂 Project Structure

```text
Indian-Stock-Market-Analysis/
│
├── data/
│   └── stock_market_cleaned.csv
│
├── notebooks/
│   └── Displaying_stocks.ipynb
│
├── sql/
│   └── stock_analysis.sql
│
├── reports/
│   └── Stock_Market_Final_Insights_and_Conclusion.pdf
│
└── README.md
```

*File names are illustrative and should match the files uploaded to the repository.*

## 📊 Dataset Description

The dataset contains historical stock market information, including:

- **Date:** Trading date
- **Ticker:** Stock symbol
- **Company:** Company name
- **Sector:** Industry classification
- **Open:** Opening stock price
- **High:** Highest price during the trading day
- **Low:** Lowest price during the trading day
- **Close:** Closing stock price
- **Adjusted Close:** Adjusted closing price
- **Volume:** Number of shares traded
- **Daily Return (%):** Daily percentage price change
- **Market Value Traded:** Estimated total traded value

## 🔄 Project Workflow

### 1. Data Cleaning and Preprocessing

Used Python and Pandas to prepare the dataset for analysis.

Activities included:
- Checking missing values and duplicate records.
- Formatting date columns.
- Converting columns into appropriate data types.
- Preparing cleaned data for MySQL.

### 2. SQL-Based Data Analysis

Imported the cleaned dataset into MySQL and performed analytical operations.

**SQL concepts used:**
- Aggregate functions: `SUM()`, `AVG()`, `MAX()`, `MIN()`
- `GROUP BY` and `ORDER BY`
- Window functions: `RANK()` and `LAG()`
- Common Table Expressions (CTEs)
- SQL Views
- Sector-wise comparisons

### 3. Data Visualization

Created analytical charts using Matplotlib and Seaborn.

Visualizations include:
- Stock closing-price comparisons
- Average daily return analysis
- Sector-wise performance charts
- Trading volume comparisons
- Daily stock price movement charts
- Stock performance bubble charts

### 4. Final Insights and Reporting

Analyzed SQL results and visualizations to understand historical stock performance and trading behavior.

The final report is available in the `reports/` folder.

## 🔍 Key Findings

Based on the analyzed dataset:

- **Highest recorded closing price:** Maruti Suzuki — ₹18,762.97.
- **Highest single-day gain:** Maruti Suzuki — 7.76% on August 7, 2025.
- **Highest total traded value:** Maruti Suzuki — approximately ₹64.47 trillion.
- **Highest average daily return:** Reliance Industries — 0.21%.
- **Sector representation:** Banking had the highest representation, with five companies.

These findings describe the historical dataset analyzed in this project and should not be interpreted as future stock price predictions.

## 📈 Project Outcomes

- Successfully cleaned and prepared stock market data using Python.
- Imported and analyzed historical stock data using MySQL.
- Applied SQL window functions and aggregate queries.
- Created visualizations to communicate analytical results.
- Developed a final insights and conclusion report.
- Demonstrated practical integration between Python and SQL.

## 📝 Conclusion

This project demonstrates how Python and MySQL can be combined to perform historical stock market analysis.

By applying data cleaning techniques, SQL analytical functions, and visualization libraries, the project identifies meaningful patterns in stock prices, daily returns, trading volumes, and sector performance.

The project strengthened practical skills in data preprocessing, database management, SQL querying, analytical problem-solving, and data visualization.

## 🚀 Future Improvements

- Integrate AWS S3 for cloud-based data storage.
- Implement Snowflake for cloud data warehousing.
- Automate data ingestion using Python.
- Develop interactive dashboards using Power BI or Streamlit.
- Extend the analysis with additional historical market data.

## 👨‍💻 Author

**Chandan Lama**

Aspiring Data Engineer | Python | SQL | Data Analytics | AWS | Snowflake

---

⭐ If you find this project useful, consider starring the repository.
