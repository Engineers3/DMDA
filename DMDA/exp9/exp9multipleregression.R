# Sample Data for Multiple Regression (Height, Age vs Weight)
set.seed(123)
age <- c(25, 30, 35, 40, 45)  
height_multi <- c(150, 160, 170, 180, 190) 
weight_multi <- c(50, 60, 65, 75, 85) 
multiple_model <- lm(weight_multi ~ height_multi + age)
summary(multiple_model)
library(ggplot2)
ggplot(data = data.frame(weight_multi, fitted = fitted(multiple_model)), aes(x = fitted, y = weight_multi)) +
  geom_point() +
  geom_smooth(method = "lm", color = "blue", se = FALSE) +
  ggtitle("Multiple Regression: Residuals vs Fitted Values") +
  theme_minimal()
