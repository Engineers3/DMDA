
data <- c(4, 7, 8, 9, 7, 10, 5, 7, 6, 8)
mean_value <- mean(data)
cat("Mean:", mean_value, "\n")
median_value <- median(data)
cat("Median:", median_value, "\n")
mode_value <- as.numeric(names(sort(table(data), decreasing = TRUE)[1]))
cat("Mode:", mode_value, "\n")
