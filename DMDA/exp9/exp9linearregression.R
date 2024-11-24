
set.seed(123)
height <- c(150, 160, 170, 180, 190)
weight <- c(50, 60, 65, 75, 85)
linear_model <- lm(weight ~ height)
summary(linear_model)
ggplot(data = data.frame(height, weight), aes(x = height, y = weight)) +
  geom_point() +
  geom_smooth(method = "lm", color = "blue", se = FALSE) +
  ggtitle("Linear Regression: Weight vs Height") +
  theme_minimal()
