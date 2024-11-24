
time <- c(1, 2, 3, 4, 5)
sales <- c(50, 60, 75, 95, 120)  
plot(time, sales, main = "Sales vs Time", xlab = "Time", ylab = "Sales", pch = 16)
nls_model <- nls(sales ~ a * time^2 + b * time + c, start = list(a = 1, b = 1, c = 50))
curve(predict(nls_model, list(time = x)), add = TRUE, col = "red")
