# Coursera_data_analytics_capstone_project

### **Cyclistic Bike-Share: Case Study**

_This document is made as part of the capstone project of the Google Data Analytics Professional Certificate._

### **Scenario**
You are a junior data analyst working in the marketing analyst team at Cyclistic, a bike-share company in Chicago. The director
of marketing believes the company’s future success depends on maximizing the number of annual memberships. Therefore,
your team wants to understand how casual riders and annual members use Cyclistic bikes differently. From these insights,
your team will design a new marketing strategy to convert casual riders into annual members. But first, Cyclistic executives
must approve your recommendations, so they must be backed up with compelling data insights and professional data
visualizations.

### **About the company**
In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown to a fleet of 5,824 bicycles that
are geo-tracked and locked into a network of 692 stations across Chicago. The bikes can be unlocked from one station and
returned to any other station in the system anytime.

The data analysis process is broken down into six steps: Ask, Prepare, Process, Analyze, Share, and Act.

### **ASK**
Three questions will guide the future marketing program:
1. How do annual members and casual riders use Cyclistic bikes differently?
2. Why would casual riders buy Cyclistic annual memberships?
3. How can Cyclistic use digital media to influence casual riders to become members?

_**Business task**_
The goal of this case study is to identify how do annual members and casual riders use Cyclistic bikes differently.

_**Stakeholders:**_
- Primary stakeholders: The director of marketing (Lily Moreno) and Cyclistic executive team.
- Secondary stakeholders: Cyclistic marketing analytics team.


### **PREPARE**
Motivate International Inc. made available the data, which comprises Cyclistic's historical trip data from the previous 12 months (March-2021 to February-2022) in `.csv` format, which will be utilized to produce insights via this [link](https://divvy-tripdata.s3.amazonaws.com/index.html) and under this [license](https://ride.divvybikes.com/data-license-agreement).

The ROCCC method is used to assess the data's credibility.

- Reliable: It is thorough and accurate, and it represents all bike trips taken in Chicago during the time period chosen for our investigation.
- Original: Motivate International Inc., which operates the city of Chicago's Divvy bicycle sharing service powered by Lyft, provides the data.
- Comprehensive: The data includes all ride details such as start and end times, station names, station IDs, membership type, and many more.
- Current: It is current because it includes data to the end of March 2022.
- Cited: The data has been referenced and is available under the Data License Agreement.

Data was uploaded to SQL Server for cleaning and analysis using SQL.

### **PROCESS**
- Datasets were combined and cleaned using [this SQL file](https://github.com/zaddy18/Coursera_data_analytics_capstone_project/blob/main/Bike-share.sql) in SQL Server.
- 5 columns were added to the table (duration in minutes, hour, weekday, hour, month) to assist in analysis.
- About 4.60 million rows were cleaned, saved in `.csv` format and ready to be visualized in Power Bi.

