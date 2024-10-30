# eda_plots.R
# Load necessary libraries
library(tidyverse)
library(forecast)

# Load the cleaned dataset
attrition_data <- read.csv("attrition_cleaned.csv")

# Convert percent_retained to a time series object
attrition_ts <- ts(attrition_data$percent_retained, start=c(min(attrition_data$session_year)), frequency=12)

# Plot the time series
plot.ts(attrition_ts, main="Attrition Rate Over Time", ylab="Percent Retained", xlab="Date")

# Plot the ACF and PACF
acf(attrition_ts, main="Autocorrelation Function (ACF) of Attrition Rate")
pacf(attrition_ts, main="Partial Autocorrelation Function (PACF) of Attrition Rate")

# Decompose the time series to analyze seasonal trends
decomposed_attrition <- decompose(attrition_ts)
plot(decomposed_attrition)
