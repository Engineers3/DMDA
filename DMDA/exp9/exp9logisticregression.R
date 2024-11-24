
set.seed(123)
overweight <- ifelse(height > 165, 1, 0) 
height_logistic <- height
logistic_model <- glm(overweight ~ height_logistic, family = binomial)
summary(logistic_model)
library(ggplot2)
ggplot(data = data.frame(height_logistic, overweight), aes(x = height_logistic, y = overweight)) +
  geom_point(aes(color = as.factor(overweight))) +
  geom_smooth(method = "glm", method.args = list(family = "binomial"), color = "blue") +
  ggtitle("Logistic Regression: Overweight vs Height") +
  theme_minimal()
