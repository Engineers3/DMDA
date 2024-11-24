
observed <- matrix(c(20, 15, 15, 25, 15, 10), nrow = 2, byrow = TRUE)
rownames(observed) <- c("Male", "Female")
colnames(observed) <- c("Product A", "Product B", "Product C")
chi_square_test <- chisq.test(observed)
print(chi_square_test)
mosaicplot(observed, main = "Mosaic Plot of Gender vs Product Preference", color = TRUE)
