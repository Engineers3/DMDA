# Define the height and weight data
height <- c(150, 160, 170, 180, 190)
weight <- c(50, 60, 70, 80, 90)
model <- lm(weight ~ height)
plot(height, weight, main = "Height vs. Weight",
     xlab = "Height (cm)", ylab = "Weight (kg)", pch = 16)
abline(model, col = "red")
