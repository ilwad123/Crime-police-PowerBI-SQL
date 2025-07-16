# Crime-police-PowerBI-SQL

# Stop and Search Analytics (Power BI + Python + SQL)

## Overview

This project presents an interactive stop and search analytics dashboard developed using **Power BI**, with all data pre-processed and cleaned using **Python** and then imported into **SQL** for structured storage and querying. The aim is to uncover insights into stop and search patterns conducted by **Avon and Somerset Police**, focusing on proportionality, outcomes, and geographic and ethnic disparities.

Dataset found on Data.gov crime datasets 
---
## Project Goals

The key objectives of this project include:

- Investigate whether stop and search actions are proportional across ethnic groups
- Understand how location and demographics affect search rates and outcomes
- Identify disparities in reasons and results of searches by ethnicity
- Highlight any data gaps (e.g. missing officer or subject ethnicity)
- Provide a data-driven report on findings to stakeholders

---
## Dashboard screenshots 
<img width="636" height="356" alt="image" src="https://github.com/user-attachments/assets/3a9d38e9-fffa-4bdc-afcf-98c09a01bf7d" />

---
## Dashboard Insights

Based on the cleaned dataset and Power BI visualisations, the following key insights were identified:

- Only around **25%** of stop and searches result in arrest, raising questions about effectiveness.
- **Black individuals** make up **5.9%** of the population but account for **7.03%** of stop and searches.
- Over **60%** of stop and searches involving Black individuals are for suspected **drug possession**, a more targeted search reason than for White individuals.
- **Arrest rate is higher** for White individuals (**26%**) compared to Black individuals (**20%**) despite a lower search rate.
- Searches are **clustered in lower-income and ethnically diverse areas**, especially around Bristol.

### Geographic Patterns

Looking at the map, we see that **Bristol** has the highest number of recorded stop and search locations in the Avon and Somerset region. These are heavily concentrated in densely populated urban neighbourhoods, particularly:

- City centre areas like **Broadmead**, **Cabot Circus**, and **Stokes Croft**  
- **St Paul’s** and **Montpelier**  
- **Easton** and **Lawrence Hill**  
- Parts of **Bedminster**

These areas have a higher ethnic population and are considered to have **higher levels of socioeconomic deprivation**. This pattern raises important questions about the fairness and proportionality of police activity across different communities.

---

## Dataset Summary

- **Source**: Public stop and search records (Avon and Somerset Police)
- **Format**: CSV (cleaned using Python, imported into SQL)
- **Date Processed**: April 2025
- **Key Columns**:
  - Demographics: Gender, Age Range, Self-defined Ethnicity of the person
  - Search Details: Object of search, Outcome, Arrest indicator, Removal of clothing, Outcome linked to object 
  - Officer information: Officer ethnicity, Outcome linked to officer
  - Location: Latitude/Longitude

---

## Tools Used

- **Python (Jupyter Notebook)**: Data cleaning and feature engineering using `pandas`, `numpy`
- **SQL**: Structured storage and query logic (e.g. filtering by ethnicity or location)
- **Power BI**: Dashboard development, charts, and interactivity
- **CSV**: Source file for raw data import and final export

---

## Data Cleaning (`stop_search_data_cleaning.ipynb`)

The raw dataset was cleaned using Python with the following steps:

- Removed duplicates and irrelevant columns
- Removed fully empty columns aswell
- Flagged and logged records with missing officer/subject ethnicity
- Replaced missing values with Unknown
- For missing values in the longitude and latitude columns, replaced them with NULL since these are numerical and compatible with SQL
- Exported final cleaned dataset as a `.csv` file for SQL import

---

## SQL Import & Validation

After cleaning, the data was imported into a SQL database where additional validation and filtering were performed:

- Confirmed column data types (e.g. integers for IDs, strings for text fields)
- Ensured each record was uniquely identified
- Built views for ethnicity breakdowns, arrest outcomes, and search types
- Enabled Power BI to query data efficiently using DirectQuery or scheduled refresh

---

## Power BI Dashboard Features

### KPI Cards:
- Total Self-ethnicity of the person 

### Visuals:
- **Stacked Column Charts**: Stop and search outcomes by ethnicity
- **Map Visualisation**: Geographical clustering of searches across Bristol and surrounding areas
- **Donut Chart**: Breakdown of search reasons by group and outcome distribution
- **Filterable Timeline**: Monthly trends in search frequency and arrest rates using a *line graph*

### Interactive Slicers:
- Ethnicity (subject and officer)
- Outcome type (Arrest, NFA, etc.)
- Object of search
- Area / Location
- Outcome of object of search
- Removal of clothing 
---

## Project Files

| File | Description |
|------|-------------|
| `stop_search_data_cleaning.ipynb` | Python script for data cleaning and preparation |
| `crime.pbix` | Power BI dashboard connected to SQL for interactive insights |
| `crime (1).pptx` | Final presentation summarising project findings |
| `cleaned_stop_search.csv` | (Generated) Cleaned dataset ready for SQL import |
| `SQL_tables_and_views.sql` | (Optional) SQL schema and views for Power BI connection |

---

## 📬 Contact

If you have questions, feedback, or would like to access the dashboard or SQL schema, please feel free to get in touch.

