# Online Tutor Workforce Allocation
MSc Data Science Project for Predicting Tutor Demand at Third Space Learning

This project aims to predict tutor demand and optimize workforce allocation for Third Space Learning. Using data science techniques, specifically SARIMA modeling, we forecast tutor availability to align with student demand, thereby improving efficiency and reducing operational costs.

## Table of Contents
- [Project Overview](#project-overview)
- [Project Structure](#project-structure)
- [Data Requirements and Privacy](#data-requirements-and-privacy)
- [Methodology](#methodology)
- [Model Selection & Evaluation](#model-selection--evaluation)
- [Key Findings](#key-findings)
- [Future Work](#future-work)
- [Usage Instructions](#usage-instructions)

---

## Project Overview

Third Space Learning offers online tutoring services, where accurately predicting tutor demand is essential to meet student needs. Variability in tutor availability and student demand can lead to inefficiencies, impacting service quality and operational costs. This project leverages data science models to improve workforce allocation, ensuring optimal tutor availability aligned with demand patterns.

## Project Structure

- `src/`: Contains R scripts for data preparation, exploratory analysis, modeling, and forecasting.
- `notebooks/`: Jupyter or RMarkdown notebooks documenting steps in data exploration and model training.
- `sql_queries/`: SQL scripts for data extraction and preparation.
- `results/`: Stores model outputs, visualizations, and evaluation metrics.
- `sample_attrition.csv`: Sample dataset for demonstration purposes, structured similarly to the original data but without sensitive information.

## Data Requirements and Privacy

Data was collected from various internal sources, including tutor schedules and student demand records. To protect privacy, only simulated data is shared here as `sample_attrition.csv`, which mimics the format of the original data.

The dataset includes:
- `session_year`: Year of each tutoring session.
- `session_month`: Month of each session.
- `percent_retained`: Percentage of tutors retained, simulated for demonstration.

## Methodology

This project follows the CRISP-DM framework, with six phases: Business Understanding, Data Understanding, Data Preparation, Modeling, Evaluation, and Deployment. Various time series models were evaluated, with SARIMA selected for its robustness in handling seasonality and trends observed in tutor demand. Other models, such as ARIMA and Holt-Winters, were compared to ensure SARIMA's suitability.

## Model Selection & Evaluation

The SARIMA model revealed significant seasonal peaks and valleys in tutor demand, allowing for proactive workforce adjustments. Implementing this model can enhance scheduling efficiency, reduce operational costs, and ensure sufficient tutor availability during high-demand periods. These findings align with Third Space Learning's goals of optimized workforce allocation and improved service reliability.

## Key Findings

The SARIMA model successfully identified seasonal patterns in tutor demand, allowing Third Space Learning to:
- Adjust workforce allocation to meet demand peaks.
- Reduce operational costs by improving scheduling accuracy.
- Ensure adequate tutor availability during high-demand periods, enhancing service reliability.

## Future Work

Future improvements could include testing advanced machine learning models, such as LSTM networks, to capture longer-term dependencies in demand data. Integrating real-time data could further refine predictions, enabling more responsive workforce allocation and improving service quality.

## Usage Instructions

1. **Clone the Repository**: Download the project files to your local machine.
   ```bash
   git clone <repository-url>
