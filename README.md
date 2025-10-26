Road Accident Analysis Project
Overview
This end-to-end project demonstrates how to convert raw road accident data into actionable insights using Python for exploratory data analysis (EDA), SQL for cleaning and aggregation, Power BI for interactive dashboards, and PowerPoint for summarizing results. The workflow uncovers spatial, temporal, and contextual patterns in accident occurrence and severity, helping decision-makers target effective safety interventions.

Table of Contents
Project Overview

Project Structure

Dataset Details

Exploratory Data Analysis (EDA)

SQL Analysis & Validation

Power BI Dashboard

Presentation & Business Recommendations

Key Insights

How to Use This Repository

Why Use This Workflow?

Getting Started

License

Project Structure
File Name	Description
Accidents_Cld.csv	The cleaned, analytics-ready road accident dataset
project-eda-part.ipynb	Python Jupyter Notebook for detailed EDA, data cleaning, feature engineering, and preliminary visualization
Accidents_sql_file.sql	SQL queries for aggregating, summarizing, and validating accident data
GNCIPL_Final_Project.pbix	Interactive Power BI dashboard (with DAX, visuals, filters, and drilldowns)
Road_Accident_Analysis_Presentation-1.pptx	Executive summary of analysis, findings, and actionable recommendations
Dataset Details
File: Accidents_Cld.csv

Contains one record per accident with attributes for date, time, location (lat/lon), severity, vehicles and casualties, road and junction details, weather, lighting, area type, and more.

Text and numeric columns allow both statistical and business-friendly reporting.

Serves as the basis for all EDA, SQL, and BI work.

Key Columns:

Identifiers: Accident_Index, longitude, latitude, Date, Time

Outcome: Accident_Severity, Number_of_Vehicles, Number_of_Casualties

Context: Road_Type, 1st_Road_Class, Junction_Detail, Speed_limit, Pedestrian, Light_Conditions, Weather_Conditions, Urban_or_Rural_Area

Exploratory Data Analysis (EDA)
File: project-eda-part.ipynb

Loads and inspects data, checks for duplicates and missing values, and provides basic summary stats.

Maps coded columns to readable labels (e.g., severity, road class, junction type).

Combines date and time fields, generates features for day of week, month, hour.

Visualizes distributions, outliers, correlations, and spatial patterns with libraries like Matplotlib, Seaborn, and Folium.

Cleans and prepares an analytics-ready data frame for downstream use.

SQL Analysis & Validation
File: Accidents_sql_file.sql

Runs summary statistics: total counts, accidents by severity, day, location, weather, road type, and time.

Aggregates and ranks risks (e.g., top accident days, worst locations, dangerous hour periods).

Calculates key ratios (e.g., fatality rates, urban vs. rural split, accident-frequency by cause).

Validates and cross-checks EDA and BI findings at the database level.

Extracts clean, aggregated tables suitable for direct import into dashboards.

Power BI Dashboard
File: GNCIPL_Final_Project.pbix

Multi-page dashboard covers:

Overview: KPIs (total/counts/trends), map visuals, accident breakdown by area and severity.

Trends: Line and bar charts for month, day, and hour trends; YOY/period growth rates.

Geographic Analysis: Accident hotspots, urban vs. rural splits, interactive mapping.

Factors Analysis: Impact of road conditions, junctions, weather, lighting, and pedestrian features.

Raw Data Table: For detailed lookup and export.

Uses advanced DAX measures for KPIs, filters, and calculated insights.

Enables drill-through, slicers, interactive legends, and bookmarks for flexible exploration.

Designed for clarity and business impact—clear color coding, legends, and responsive layout.

Presentation & Business Recommendations
File: Road_Accident_Analysis_Presentation-1.pptx

Concisely summarizes the methodology, core visuals, and findings.

Communicates key recommendations derived from analytical insights, such as targeted enforcement times, priority locations for infrastructure upgrades, and environmental risk alerts.

Suitable for presenting to stakeholders, employers, or academic audiences.

Key Insights
Spatial Patterns: Identifies high-incident areas and maps them for resource allocation.

Temporal Patterns: Highlights risky hours/days/months, showing peaks in accident frequency and severity.

Weather and Environment: Links between weather, lighting, and accident severity are drawn out with data.

Infrastructure Analysis: Specific road types, junctions, and pedestrian facilities correlated to increased risk.

Data-Driven Recommendations: Helps prioritize interventions with evidence-backed strategies.

How to Use This Repository
Review the data pipeline in project-eda-part.ipynb for full preprocessing and feature engineering.

Use SQL queries in Accidents_sql_file.sql for database-level validation and summary table creation.

Open GNCIPL_Final_Project.pbix with Power BI Desktop for interactive dashboarding.

Reference Road_Accident_Analysis_Presentation-1.pptx for a business or academic summary.

All files are modular and can be adapted or extended for other regions, features, or presentation formats.

Why Use This Workflow?
Transparency: EDA and SQL code is openly available for inspection, ensuring confidence in the reported insights.

Reproducibility: Step-by-step documentation allows other analysts to repeat or extend the workflow.

Business Relevance: Dashboard and presentation focus on questions that matter for public safety and resource planning.

Versatility: The modular approach works across different data sizes, sources, and stakeholder needs.

Best Practices: Incorporates data cleansing, validation, advanced visualization, and clear communication—skills valued in data science and analyst roles.

Getting Started
Download the repository and install dependencies (Python, Jupyter, Power BI Desktop).

Run the EDA notebook to familiarize and verify data processing.

Optionally, use or modify SQL queries for quick aggregations.

Launch Power BI report to explore and analyze interactively.

Use the PPTX for sharing findings with others.

License
This project is for academic, educational, and analytical purposes. Please cite/reference if used in published work or business settings.
