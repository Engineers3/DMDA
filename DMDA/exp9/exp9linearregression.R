#Predicting someone&#39;s weight based on their height.
# Define height and weight vectors
height <- c(150, 160, 170, 180, 190)
weight <- c(50, 60, 70, 80, 90)
model <- lm(weight ~ height)
summary(model)
predict(model, newdata = data.frame(height = c(165, 175)))
