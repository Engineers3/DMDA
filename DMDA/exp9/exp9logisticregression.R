# Define the age and buying data
age <- c(20, 30, 40, 50, 60)
buy <- c(0, 1, 0, 1, 1) 
model <- glm(buy ~ age, family = binomial)
summary(model)
predicted_probs <- predict(model, newdata = data.frame(age = c(25, 35)), type = "response")
print(predicted_probs)
age_seq <- seq(min(age), max(age), length.out = 100)
fitted_probs <- predict(model, newdata = data.frame(age = age_seq), type = "response")
plot(age, buy, main = "Logistic Regression: Age vs. Buying",
     xlab = "Age", ylab = "Buying Probability", pch = 16, col = "blue", ylim = c(0, 1))
lines(age_seq, fitted_probs, col = "red", lwd = 2)
