# model_training.R
# Load necessary libraries
library(forecast)

# Load the time series data from the cleaned file
attrition_data <- read.csv("attrition_cleaned.csv")
attrition_ts <- ts(attrition_data$percent_retained, start=c(min(attrition_data$session_year)), frequency=12)

# Fit ARIMA models
arima_model_110 <- Arima(attrition_ts, order=c(1,1,0))
summary(arima_model_110)
checkresiduals(arima_model_110)

arima_model_111 <- Arima(attrition_ts, order=c(1,1,1))
summary(arima_model_111)
checkresiduals(arima_model_111)

arima_model_210 <- Arima(attrition_ts, order=c(2,1,0))
summary(arima_model_210)
checkresiduals(arima_model_210)

# Fit Holt-Winters model
hw_model <- hw(attrition_ts, seasonal="multiplicative")
summary(hw_model)
plot(hw_model)
checkresiduals(hw_model)

# Fit SARIMA models
sarima_model <- Arima(attrition_ts, order=c(1,1,0), seasonal=c(1,1,0))
summary(sarima_model)
checkresiduals(sarima_model)

sarima_adjusted_model <- Arima(attrition_ts, order=c(1,1,1), seasonal=c(1,1,1))
summary(sarima_adjusted_model)
checkresiduals(sarima_adjusted_model)

sarima_adjusted_model2 <- Arima(attrition_ts, order=c(2,1,1), seasonal=c(1,1,1))
summary(sarima_adjusted_model2)
checkresiduals(sarima_adjusted_model2)
