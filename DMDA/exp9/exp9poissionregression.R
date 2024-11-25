
set.seed(123)
height<-c(45,56,75,89,35,67)
exercises <- rpois(5, lambda = exp(0.05 * height)) 
poisson_model <- glm(exercises ~ height, family = poisson)
summary(poisson_model)
library(ggplot2)
ggplot(data = data.frame(height, exercises), aes(x = height, y = exercises)) +
  geom_point(aes(color = exercises)) +
  geom_smooth(method = "glm", method.args = list(family = "poisson"), color = "blue") +
  ggtitle("Poisson Regression: Exercises per Week vs Height") +
  theme_minimal()
