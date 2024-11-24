# Sample Data: Sales vs Time
time <- c(1, 2, 3, 4, 5) 
sales <- c(50, 60, 75, 95, 120)  
data <- data.frame(time, sales)
library(rpart)
tree_model <- rpart(sales ~ time, data = data, control = rpart.control(minsplit = 1, cp = 0))
plot(tree_model, uniform = TRUE, main = "Decision Tree")
text(tree_model, use.n = TRUE, cex = 0.8)
predicted_sales <- predict(tree_model, newdata = data)
plot(
  time, sales, 
  main = "Decision Tree Regression", 
  xlab = "Time", 
  ylab = "Sales", 
  pch = 16, col = "blue"
)
lines(time, predicted_sales, col = "red", lwd = 2)  # Add predicted line
