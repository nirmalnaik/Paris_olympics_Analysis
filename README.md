# Paris Olympic(2024) Data Analysis Project

![image](https://github.com/user-attachments/assets/00246d07-9d76-4256-9625-b08f66d49bd2)

## Project Overview

The Paris 2024 Olympic Data Analysis project is designed to leverage advanced data analytics and visualization techniques to provide a comprehensive overview of the dynamics at the upcoming Olympic Games. Utilizing data sourced daily from Kaggle, this project aims to offer strategic insights into athlete performances, event schedules, and medal distributions, helping stakeholders from coaches to journalists make informed decisions.

### Objectives:
- **Enhance Athletic Performance**: Analyze athlete data to identify performance patterns and provide recommendations for training and improvement.
- **Optimize Event Scheduling**: Examine event timelines and overlaps to propose optimal scheduling strategies, reducing conflicts and improving viewer engagement.
- **Highlight Medal Trends**: Investigate historical and current games data to forecast potential medal winners and highlight strengths and weaknesses across different countries.

### Key Features:
- **Real-Time Data Processing**: Implement a robust data pipeline in Azure that ingests, processes, and stores updated data daily, ensuring all analyses reflect the most current information available.
- **Advanced Analytics**: Utilize Azure Databricks for complex data transformations and Azure Synapse Analytics for in-depth SQL querying to uncover deep insights.
- **Interactive Visualizations**: Develop dynamic dashboards in Power BI that visually represent data on athlete demographics, event densities, and medal counts, allowing for interactive exploration and instant insight retrieval.
- **Collaborative Reporting**: Provide a platform via Looker Studio for stakeholders to access customized reports and dashboards tailored to their specific needs, fostering a data-driven approach in decision-making processes.

### Stakeholders:
- **Olympic Coaches and Teams**: To gain insights into athlete performance and health metrics for better training decisions.
- **Event Organizers and Logisticians**: To manage schedules more effectively, ensuring smooth operations during the games.
- **Sports Analysts and Journalists**: To access timely and accurate data for reporting and analysis.
- **General Public and Sports Enthusiasts**: To enjoy enhanced viewing experiences through better-informed commentary and insights.

This project is not just about data analysis; it's about transforming how data is utilized in the context of one of the world's largest sporting events, ensuring every stakeholder has the insights they need at their fingertips.


## Data Sources

The data for the Paris 2024 Olympic Data Analysis project is sourced from a continuously updated dataset on Kaggle, ensuring the most current and comprehensive information is utilized for analysis. This dataset is pivotal in providing a granular view of the various aspects of the Olympic Games.

### Primary Data Source:
- **Kaggle Dataset**: The dataset, titled "Paris Olympics 2024 Games Dataset (Updated Daily)," is accessible via the following link: [Paris Olympics 2024 Dataset on Kaggle](https://www.kaggle.com/datasets/sajkazmi/paris-olympics-2024-games-dataset-updated-daily). This source is maintained with daily updates, which include new data entries and corrections to existing records as more information becomes available or as events unfold.

### Dataset Composition:
The dataset comprises several CSV files, each representing different facets of the Olympic Games:
- **Athletes.csv**: Contains detailed profiles of athletes, including their names, nationalities, sports, and event participation details.
- **Events.csv**: Lists all scheduled events, their timings, locations, and other logistical details.
- **Coaches.csv**: Provides information about the coaches, their respective sports, and the athletes they are coaching.
- **Medals.csv**: Records medal outcomes, listing which athletes and countries have won medals, along with the type of medals (gold, silver, bronze).
- **Teams.csv**: Details about the composition of national teams, including the number of participants and their respective sports.

### Data Updates and Management:
- **Automated Ingestion**: An automated pipeline using Azure Data Factory continuously ingests the updated data into Azure Data Lake Storage Gen2. This setup ensures that the data available for analysis is always current, reflecting the latest updates and corrections.
- **Version Control**: Historical data is maintained to allow comparisons over time and to enable trend analysis. Each data ingestion operation is timestamped and versioned to track changes and updates.

### Data Usage:
- **Analysis Preparedness**: The structure and frequency of data updates require robust data handling strategies to ensure analysis readiness. The data is pre-processed using Azure Databricks, where cleansing, normalization, and aggregation tasks are performed.
- **Stakeholder Reporting**: Updated data feeds into Power BI dashboards, providing stakeholders with real-time insights into athlete performances, medal counts, and event schedules. Customized reports are generated in Looker Studio, allowing stakeholders to interact with the data and extract personalized insights.

This detailed focus on high-quality and up-to-date data sources underpins the project's ability to provide valuable insights and ensures that all stakeholders have access to reliable and actionable information throughout the Olympic Games.


## Data Processing and Transformation

Efficient and accurate data processing and transformation are critical to ensuring the reliability of the analytics delivered by this project. This section outlines the methods and technologies employed to process the raw data from the Olympic Games dataset into a structured format that facilitates insightful analysis.

### Data Processing Pipeline

**Ingestion**:
- **Azure Data Factory** is used to automate the ingestion of data from Kaggle into Azure Data Lake Storage Gen2. This includes setting up data pipelines that handle the daily updates, ensuring that the latest information is always available for analysis.
![image](https://github.com/user-attachments/assets/a9aacdc5-bca9-48b8-bc71-5f6a56f7f620)


**Cleansing**:
- **Azure Databricks** notebooks are utilized for the cleansing phase, where data is scrubbed to remove duplicates, handle missing values, and correct anomalies. This step is crucial for maintaining the integrity of the dataset.

**Normalization**:
- The data undergoes normalization to standardize the formats of dates, categorical data, and other relevant fields. This ensures consistency across the dataset, making it easier to aggregate and analyze across different dimensions.

### Transformation Techniques

**Aggregation**:
- Data is aggregated to provide summaries that are more useful for analysis, such as counting the total number of athletes per country or the total medals won by sport. These aggregations form the basis for many of the dashboard visualizations.

**Feature Engineering**:
- New features are created from existing data to enhance the dataset with additional insights. For example, athlete age groups are derived from birth dates to analyze performance across different age categories.

**Data Enrichment**:
- The dataset is enriched with additional data, such as historical performance metrics and environmental factors, to provide a deeper layer of analysis for predictive modeling and trend analysis.

### Tools and Technologies

- **Azure Databricks**: Provides a collaborative platform for data scientists to perform complex data transformations using Spark, Python, or SQL.
- **Azure Synapse Analytics**: Utilized for its powerful querying capabilities, allowing for the execution of complex analytical queries on large datasets.

### Data Model and Storage

- **Data Lake Storage**: Serves as the primary storage for raw and processed data, leveraging its scalable and cost-effective storage solutions.
- **Data Warehousing**: Processed data is moved into Azure Synapse, where it is modeled and stored in optimized formats for fast retrieval and analysis.

### Version Control and Data Quality

- **Version Control**: Each batch of ingested and processed data is tagged with a version number and timestamp to track changes over time and revert to previous versions if necessary.
- **Data Quality Checks**: Automated scripts run quality checks after each processing step to ensure data accuracy and consistency. Alerts are generated for any anomalies detected, triggering immediate review and correction.

### Outcome

The data processing and transformation phase equips the project with a clean, reliable dataset that is ready for in-depth analysis and visualization. This foundation is crucial for generating accurate insights and supporting data-driven decision-making throughout the Olympic Games.


## Data Visualization

### Age Distribution by Sport
![image](https://github.com/user-attachments/assets/3fab1c3d-9650-4e3c-b4dc-9d100bb0b9ec)
*Age distribution across various sports disciplines, highlighting the diversity in athlete ages.*

### Gender Representation by Sport
![image](https://github.com/user-attachments/assets/d36cd662-f28c-4611-aae8-533bdfef2594)
*Comparison of male and female participants across different sports.*

### Medal Distribution by Country
![image](https://github.com/user-attachments/assets/75a6c2ff-3dc5-4293-8ec3-4c009dd70e4a)
*Visual representation of medals won by different countries, emphasizing the competitive landscape.*

### Top Athletes by Medals
![image](https://github.com/user-attachments/assets/75a6c2ff-3dc5-4293-8ec3-4c009dd70e4a)
*List of athletes who secured the most medals in the Olympics.*

### Event Density by Date
![image](https://github.com/user-attachments/assets/642f884c-caef-4974-b440-b7b99a3ec2f1)
*Analysis of the number of events scheduled per day throughout the Olympics.*

### Overlapping Events
![image](https://github.com/user-attachments/assets/642f884c-caef-4974-b440-b7b99a3ec2f1)
*Details of events that occur simultaneously, useful for scheduling and resource allocation.*

### Athlete Representation by Country
![image](https://github.com/user-attachments/assets/db0e0b09-0070-4b50-bfbf-4ae797dce8ec)

## Conclusion

The Olympic Data Analysis project has successfully harnessed the power of modern cloud technology and advanced data analytics to provide a deep dive into the dynamics of the Olympic Games. By leveraging a robust data pipeline, sophisticated processing and transformation techniques, and dynamic visualizations, the project has offered unprecedented insights into athlete performances, event scheduling, and medal distributions.

### Achievements:
- **Comprehensive Data Handling**: Implemented a seamless flow from data ingestion and processing to visualization, ensuring data integrity and usability.
- **Insightful Analytics**: Delivered actionable insights that have helped coaches refine training programs, assisted journalists in storytelling, and provided committees with data to optimize event schedules and athlete participation.
- **Interactive Dashboards**: Developed user-friendly Power BI dashboards that enabled stakeholders to interact with the data in real-time, enhancing decision-making processes with up-to-date information.

### Impact:
- **Strategic Decision Making**: The insights generated have directly contributed to strategic decisions regarding athlete preparations and event management.
- **Enhanced Engagement**: By providing more data-driven narratives, the project has enhanced the engagement of fans and increased the transparency of Olympic event planning and execution.
- **Operational Improvements**: Recommendations based on data analyses have led to improved scheduling, resource allocation, and overall management of the Olympic Games.

### Final Thoughts:
This project is a testament to the value of data-driven decision-making in sports management. As we look forward to the Paris 2024 Olympic Games, the infrastructure and capabilities developed through this project will continue to evolve, driving further innovations in how data is used to enhance sports analytics and audience engagement. We invite the global community of data scientists, developers, and sports enthusiasts to join us in refining and expanding this project, contributing to a richer, more informed Olympic experience.




