# Online-Tutor-Workforce-Allocation.
Msc. Data Science Project for Predicting Tutor Demand at Third Space Learning
This project aims to predict tutor demand and optimize workforce allocation for Third Space Learning. The goal is to use data science techniques, specifically SARIMA modeling, to forecast tutor availability and align it with student demand, thereby improving efficiency and reducing operational costs.
## Table of Contents
- [Overview](#overview)
- [Data Preparation](#data-preparation)
- [Methodology](#methodology)
- [Model Selection & Evaluation](#model-selection--evaluation)
- [Key Findings](#key-findings)
- [Future Work](#future-work)
Third Space Learning offers online tutoring services, where accurately predicting tutor demand is essential to match student needs. Variability in tutor availability and student demand can lead to inefficiencies, impacting service quality and operational costs. This project aims to leverage data science models to improve workforce allocation, ensuring optimal tutor availability aligned with demand patterns.
Data was collected from various internal sources, including tutor schedules and student demand records. Sensitive information is replaced with simulated data here for demonstration purposes. The data preprocessing involved cleaning null values, engineering features for seasonal patterns, and transforming data to meet model requirements.
This project follows the CRISP-DM framework, with six phases: Business Understanding, Data Understanding, Data Preparation, Modeling, Evaluation, and Deployment. Various time series models were evaluated, and SARIMA was chosen for its robustness in handling seasonality and trends observed in tutor demand. Other models, such as ARIMA and Holt-Winters, were compared to ensure SARIMA's suitability.
The SARIMA model revealed significant seasonal peaks and valleys in tutor demand, allowing for proactive workforce adjustments. Implementing this model can enhance scheduling efficiency, reduce operational costs, and ensure sufficient tutor availability during high-demand periods. These findings align with Third Space Learning's goals of optimized workforce allocation and improved service reliability.
Future improvements could include testing more advanced machine learning models, such as LSTM networks, to capture longer-term dependencies in demand data. Additionally, integrating real-time data could refine predictions and provide more responsive workforce allocation, further enhancing service quality.
