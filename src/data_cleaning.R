# Load necessary libraries
install.packages("dplyr")
install.packages("lubridate")
library(dplyr)
library(lubridate)

# Create a date range from September 2015 to June 2024
date_range <- seq.Date(from = as.Date("2015-09-01"), to = as.Date("2024-06-01"), by = "month")

# Create a sample dataset
sample_attrition <- data.frame(
  session_year = year(date_range),
  session_month = month(date_range, label = TRUE, abbr = FALSE),
  percent_retained = runif(length(date_range), min = 50, max = 100)  # Random values between 50 and 100 for retention
)

# Save the dataset as a CSV file
write.csv(sample_attrition, "sample_attrition.csv", row.names = FALSE)

# Preview the sample data
head(sample_attrition)
