Road Accident Analysis Dashboard
Overview
This project delivers a comprehensive analysis of road accident data using advanced data cleaning (SQL), dynamic analytics (Power BI & DAX), and impactful data storytelling (interactive dashboard and summary presentation). The solution is designed to help stakeholders identify key accident patterns, risk factors, and improvement opportunities in road safety.

Table of Contents
Overview

Project Structure

Dataset Description

SQL Analysis

Power BI Dashboard

Presentation

Key Insights

How to Use

Why Power BI?

Getting Started

License

Project Structure
File	Description
Accidents_Cld.csv	Cleaned road accident data for analysis and reporting
Accidents_sql_file.sql	SQL queries for exploration, summarization, and validation
GNCIPL_Final_Project.pbix	Power BI dashboard with all visuals, DAX, and interactivity
Road_Accident_Analysis_Presentation-1.pptx	Summary presentation with approach, visuals, and recommendations
Dataset Description
Accidents_Cld.csv is the primary dataset, containing:

Unique accident IDs, location coordinates, and date/time stamps.

Severity categories, count of vehicles and casualties.

Road, junction, area, pedestrian, lighting, and weather details.

Readable labels for key fields to support business-friendly reporting.

This dataset underpins all SQL analytics and Power BI visuals.

SQL Analysis: Accidents_sql_file.sql
SQL scripts enable:

Data exploration (accidents by day, severity, location, weather, time).

Generating summary tables and KPIs before reporting.

Advanced ranking (top areas, worst hours) and deep-dive (fatalities, condition combinations).

These queries validate results and provide structured input for Power BI.

Power BI Dashboard
Five interactive report pages: KPIs, trends, location mapping, detailed breakdowns, and raw-data drilldown.

Uses DAX measures for dynamic counts, time-based trends, detailed breakdowns (by road type, weather, time, area).

Allows instant filtering, drill-through, and custom exploration.

Designed for clarity, insight, and rapid business impact.

Presentation
The PowerPoint (Road_Accident_Analysis_Presentation-1.pptx) highlights:

Project objectives, methodology, and value.

Key data visuals and takeaways.

Recommendations based on findings.

Share this deck to summarize findings in meetings or interviews.

Key Insights
Accident hotspots detected using geocoded data.

Time and day analysis reveal risk patterns (e.g., weekend and night spikes).

Bad weather, poor lighting, and specific road types are associated with higher severity.

Urban/rural splits and pedestrian involvement are clearly presented for targeted actions.

How to Use
Open GNCIPL_Final_Project.pbix in Power BI Desktop.

Explore all pages — use slicers and map/drill features for personalized insights.

Review/modify SQL file for other data sources or custom aggregations.

Present findings using the included PowerPoint as a summary.

Why Power BI?
Power BI is used for its:

Rapid, user-friendly dashboards.

Mapping and drill-through capabilities.

Rich DAX engine for calculations.

Easy sharing and export options.

These features combine to deliver robust, interactive, and actionable road safety insights.

Getting Started
Download Power BI Desktop (https://powerbi.microsoft.com/).

Clone/download the repository.

Open and interact with the PBIX file.

Adapt SQL queries for custom databases or data refreshes.

License
This project is provided for educational and analytical purposes. Please acknowledge use in academic or business settings.
