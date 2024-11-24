# Sample Data: Sales over 6 months
sales <- c(100, 120, 140, 160, 180, 200) 
time_series <- ts(sales, frequency = 12, start = c(2023, 1)) 
plot(time_series, 
     main = "Sales Time Series", 
     xlab = "Month", 
     ylab = "Sales", 
     col = "blue")
linear_model <- lm(sales ~ c(1:6)) 
abline(linear_model, col = "red") 
