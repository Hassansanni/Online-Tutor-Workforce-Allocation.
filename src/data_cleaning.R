# data_cleaning.R
# Load necessary libraries
library(tidyverse)
library(lubridate)

# Load the sample dataset
attrition_data <- read.csv("sample_attrition.csv")

# Convert session_month to numerical month and create session_date
attrition_data <- attrition_data %>%
  mutate(session_month_num = match(session_month, month.name),
         session_date = make_date(session_year, session_month_num))

# Filter data between September 2015 and June 2024, excluding August
attrition_data <- attrition_data %>%
  filter(session_date >= as.Date("2015-09-01") & session_date <= as.Date("2024-06-30") & session_month != "August")

# Calculate IQR for percent_retained
Q1 <- quantile(attrition_data$percent_retained, 0.25)
Q3 <- quantile(attrition_data$percent_retained, 0.75)
IQR_value <- IQR(attrition_data$percent_retained)

# Define bounds for outliers
lower_bound <- Q1 - 1.5 * IQR_value
upper_bound <- Q3 + 1.5 * IQR_value

# Filter out outliers
attrition_data <- attrition_data %>%
  filter(percent_retained >= lower_bound & percent_retained <= upper_bound)

# Save the cleaned dataset
write.csv(attrition_data, "attrition_cleaned.csv", row.names = FALSE)

# Preview the dataset after removing outliers
head(attrition_data)
