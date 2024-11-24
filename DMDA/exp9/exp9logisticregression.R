# Define age and buy vectors
age <- c(20, 30, 40, 50, 60)
buy <- c(0, 1, 0, 1, 1) 
model <- glm(buy ~ age, family = binomial)
summary(model)
predict(model, newdata = data.frame(age = c(25, 35)), type = "response")
