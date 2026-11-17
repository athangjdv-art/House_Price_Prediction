# 🏡 House Price Analysis & Prediction

An end-to-end Data Analytics and Machine Learning project exploring the factors influencing residential property prices using **Python, MySQL, Machine Learning, and Power BI**. The project analyzes **21,613 property sales** to uncover market trends, identify key pricing factors, and develop a house price prediction model.

![Python](https://img.shields.io/badge/Python-Pandas%20%7C%20NumPy-blue)
![SQL](https://img.shields.io/badge/Database-MySQL-orange)
![Machine Learning](https://img.shields.io/badge/ML-Linear%20Regression-green)
![Power BI](https://img.shields.io/badge/Visualization-Power%20BI-yellow)
![Status](https://img.shields.io/badge/Project-Completed-success)

---

## 📑 Table of Contents

1. [Project Overview](#-project-overview)
2. [Project Objectives](#-project-objectives)
3. [Dataset Description](#-dataset-description)
4. [Tools & Technologies](#-tools--technologies)
5. [Project Workflow](#-project-workflow)
6. [Exploratory Data Analysis](#-exploratory-data-analysis)
7. [SQL Business Analysis](#-sql-business-analysis)
8. [Machine Learning Model](#-machine-learning-model)
9. [Power BI Dashboard](#-power-bi-dashboard)
10. [Key Business Insights](#-key-business-insights)
11. [Repository Structure](#-repository-structure)
12. [How to Run the Project](#-how-to-run-the-project)
13. [Limitations & Future Improvements](#-limitations--future-improvements)
14. [Author](#-author)

---

## 📌 Project Overview

This project focuses on analyzing residential property sales data to understand the major factors influencing house prices.

The analysis combines Python-based data cleaning and Exploratory Data Analysis (EDA), MySQL-based business analysis, Machine Learning-based price prediction, and an interactive Power BI dashboard.

The project aims to transform raw property sales data into meaningful business insights that can support better understanding of the real estate market.

### Key Project Components

- **Python:** Data cleaning, EDA, visualization, and predictive modelling.
- **MySQL:** Business analysis through 10 SQL queries.
- **Machine Learning:** House price prediction using Linear Regression.
- **Power BI:** Interactive dashboard for property market analysis.

---

## 🎯 Project Objectives

- Analyze the factors influencing residential property prices.
- Understand the relationship between property size, location, grade, and condition.
- Compare prices of waterfront and non-waterfront properties.
- Evaluate the impact of property renovation on selling prices.
- Identify high-value ZIP codes and property locations.
- Analyze historical property sales trends.
- Develop a Machine Learning model to predict house prices.
- Present business insights through an interactive Power BI dashboard.

---

## 📊 Dataset Description

The project uses a residential house sales dataset containing **21,613 property records** and **21 features**.

| Dataset Attribute | Description |
|---|---|
| Total Records | 21,613 |
| Total Features | 21 |
| ZIP Codes | 70 |
| Data Period | May 2014 – May 2015 |
| Missing Values | 0 |
| Duplicate Records | 0 |

### Important Dataset Features

- Price
- Bedrooms
- Bathrooms
- Living Area (sqft)
- Lot Area (sqft)
- Floors
- Waterfront
- View
- Condition
- Grade
- Year Built
- Year Renovated
- ZIP Code
- Latitude and Longitude

**Data Quality Checks:**

- Checked missing values and duplicate records.
- Examined numerical data distributions.
- Converted sale dates into proper date format.
- Identified 13 properties with zero bedrooms and 10 properties with zero bathrooms for further investigation.

---

## 🛠️ Tools & Technologies

| Technology | Purpose |
|---|---|
| Python | Data cleaning, analysis and modelling |
| Pandas & NumPy | Data manipulation and numerical analysis |
| Matplotlib & Seaborn | Data visualization |
| Scikit-learn | Machine Learning and model evaluation |
| MySQL | Database management and SQL analysis |
| Power BI | Interactive dashboard development |
| Google Colab / Jupyter | Python development environment |

---

## 🔄 Project Workflow

The project follows an end-to-end data analytics workflow.

**Step 1: Data Loading & Inspection**
- Imported the house sales dataset using Pandas.
- Examined dataset structure, columns, data types and dimensions.
- Checked missing values and duplicate records.

**Step 2: Data Cleaning & Preprocessing**
- Converted sale dates into a standard date format.
- Examined unusual property values.
- Prepared the dataset for further analysis.

**Step 3: Exploratory Data Analysis (EDA)**
- Analyzed house price distributions.
- Compared prices across different property features.
- Examined correlations between numerical variables.
- Identified important factors associated with house prices.

**Step 4: SQL Business Analysis**
- Imported the cleaned dataset into MySQL.
- Created the house_sales table.
- Executed 10 SQL queries to answer business questions.

**Step 5: Machine Learning**
- Selected 17 property features.
- Split the data into training and testing datasets.
- Developed a Linear Regression model.
- Evaluated model performance using MAE, RMSE and R².

**Step 6: Power BI Dashboard**
- Developed an interactive dashboard.
- Created KPI cards and property comparison visuals.
- Presented important market insights in a single view.

---

## 📈 Exploratory Data Analysis

EDA was performed to understand the distribution of house prices and identify relationships between property characteristics and selling prices.

### Key Analysis Performed

- Distribution of house prices.
- Relationship between living area and house prices.
- House price comparison by number of bedrooms.
- Correlation analysis of numerical variables.
- Identification of important price-related features.

### Correlation with House Price

| Feature | Correlation |
|---|---:|
| Living Area | 0.70 |
| Grade | 0.67 |
| Above Ground Area | 0.61 |
| Neighbourhood Living Area | 0.59 |
| Bathrooms | 0.53 |
| View | 0.40 |
| Bedrooms | 0.31 |
| Waterfront | 0.27 |

**EDA Interpretation:**

- Living area has the strongest positive correlation with house prices.
- Construction grade is another important factor associated with property value.
- Larger properties generally tend to have higher selling prices.
- House prices show a right-skewed distribution, with a mean of approximately $540K and median of $450K.

---

## 🗄️ SQL Business Analysis

MySQL was used to perform 10 business-oriented analytical queries to understand property market performance.

### SQL Questions Answered

| No. | Business Question |
|---|---|
| 1 | Area-wise house price analysis |
| 2 | Property feature comparison by bedrooms, bathrooms and grade |
| 3 | Market trend analysis by year |
| 4 | Identification of the top 10 most expensive houses |
| 5 | ZIP codes with the highest number of property sales |
| 6 | Impact of house condition on average selling price |
| 7 | Relationship between construction grade and house prices |
| 8 | Comparison of renovated and non-renovated properties |
| 9 | Average price per square foot by ZIP code |
| 10 | Comparison of waterfront and non-waterfront properties |

### Important SQL Findings

- ZIP code 98039 recorded the highest average house price at approximately $2.16M.
- ZIP code 98103 recorded the highest number of sales with 602 properties.
- Waterfront properties recorded significantly higher average prices.
- Higher construction grades were associated with higher property values.

---

## 🤖 Machine Learning Model

A **Linear Regression** model was developed to predict residential property prices using 17 property-related features.

### Model Development

- Algorithm: Linear Regression
- Input Features: 17 property features
- Target Variable: House Price
- Train-Test Split: 80:20
- Training Records: 17,290
- Testing Records: 4,323

### Model Evaluation

| Evaluation Metric | Result |
|---|---:|
| R² Score | 0.6957 |
| Mean Absolute Error (MAE) | $128,273 |
| Root Mean Squared Error (RMSE) | $214,595 |

### Model Interpretation

- The model explains approximately 70% of the variation in house prices.
- The MAE indicates an average absolute prediction error of approximately $128K.
- RMSE is higher than MAE, indicating larger prediction errors for some properties.
- The Linear Regression model provides a useful baseline for house price prediction.

---

## 📊 Power BI Dashboard

An interactive Power BI dashboard was developed to present important property market metrics and comparisons.

### Key Performance Indicators (KPIs)

| KPI | Value |
|---|---:|
| Average House Price | $540K |
| Total Properties | 21,613 |
| Average Living Area | 2,080 sq ft |
| Median House Price | $450K |

### Dashboard Visualizations

- Average house price by property grade.
- Average house price by number of bedrooms.
- Average house price by property condition.
- Average house price by number of floors.

The dashboard provides a consolidated view of property market performance and allows users to compare house prices across different property characteristics.

---

## 💡 Key Business Insights

### 1. Location Matters

- ZIP code 98039 recorded the highest average house price at approximately $2.16M.
- ZIP code 98002 recorded the lowest average house price at approximately $234K.
- The average price difference between these locations is approximately 9 times.
- ZIP code 98039 also recorded the highest average price per square foot at approximately $568.

### 2. Property Size and Construction Quality

- Living area has the strongest correlation with house price (0.70).
- Construction grade has a correlation of 0.67.
- Average house prices increase considerably with higher construction grades.

### 3. Waterfront Premium

- Average waterfront property price: $1.66M.
- Average non-waterfront property price: $532K.
- Waterfront properties recorded approximately 3.1 times the average price of non-waterfront properties.

### 4. Renovation Impact

- Average renovated property price: $761K.
- Average non-renovated property price: $530K.
- Renovated properties recorded approximately 43% higher average prices.

### 5. Market Trends

- Average house price in 2014: approximately $539K.
- Average house price in 2015: approximately $542K.
- Monthly average prices remained broadly stable, ranging from approximately $508K to $562K.
- February 2015 recorded the lowest monthly average price.

*Note: The 2015 dataset covers only January to May, so a full-year comparison is not possible.*

---

## 📁 Repository Structure

The GitHub repository is organized into separate folders for better project management and accessibility.

```text
House_Price_Prediction/
│
├── Dataset/
│   └── House_Sales.csv
│
├── Python/
│   └── Project.ipynb
│
├── SQL/
│   └── House_Price_Project.sql
│
├── PowerBI/
│   └── House_Price_Project.pbix
│
├── Presentation/
│   └── House_Price_Analysis.pptx
│
└── README.md
```

### Project Files

- **Dataset:** Original house sales dataset.
- **Python:** Data cleaning, EDA, visualization and Linear Regression model.
- **SQL:** MySQL database setup and 10 business analysis queries.
- **PowerBI:** Interactive property market dashboard.
- **Presentation:** Complete project presentation with findings and recommendations.

---

## ▶️ How to Run the Project

### 1. Clone the Repository

```bash
git clone https://github.com/athangjdv-art/House_Price_Prediction.git
```

### 2. Python Analysis

- Open the Python folder.
- Launch `Project.ipynb` using Jupyter Notebook or Google Colab.
- Upload the dataset `House_Sales.csv` to the Colab runtime.
- Update the CSV file path in the notebook:

```python
df = pd.read_csv('/content/House_Sales.csv')
```

- Install the required libraries if necessary:

```python
!pip install pandas numpy matplotlib seaborn scikit-learn
```

- Run all notebook cells to perform EDA, train the model and evaluate its performance.

### 3. MySQL Analysis

- Open MySQL Workbench.
- Create the database using the provided SQL script.
- Import the cleaned dataset into a table named `house_sales`.
- Execute the queries in `House_Price_Project.sql`.

### 4. Power BI Dashboard

- Open `House_Price_Project.pbix` using Power BI Desktop.
- Refresh the data source if prompted.
- Explore the available dashboard visuals and KPIs.

### 5. Project Presentation

Open `House_Price_Analysis.pptx` from the Presentation folder to review the complete project methodology, analysis and findings.

---

## 🚀 Limitations & Future Improvements

Although the project provides useful insights, several improvements can be explored in future development.

- Experiment with advanced Machine Learning algorithms such as Random Forest and Gradient Boosting.
- Apply log transformation to house prices to reduce the influence of extreme values.
- Include ZIP code as a feature in the prediction model.
- Perform additional feature engineering to improve model performance.
- Investigate unusual property records, including zero-bedroom and zero-bathroom properties.
- Use a larger time period of property sales data to analyze long-term market trends.
- Improve prediction accuracy through hyperparameter tuning and model comparison.

---

## 👨‍💻 Author

**Athang Keshav Jadhav**

Business Analytics | Data Analytics | Machine Learning

**Technical Skills:**
- Python
- SQL
- Power BI
- Microsoft Excel
- Data Analysis
- Machine Learning

### Connect With Me

- **GitHub:** [athangjdv-art](https://github.com/athangjdv-art)
- **Project Repository:** [House Price Prediction & Analysis](https://github.com/athangjdv-art/House_Price_Prediction)

---

⭐ If you find this project interesting, feel free to explore the repository and share your feedback!

**Thank you for visiting my project.**
