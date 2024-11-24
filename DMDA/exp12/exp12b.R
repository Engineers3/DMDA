
# Step 1: Create the test scores for both groups
group1 <- c(78, 85, 91, 88, 84, 79, 95)
group2 <- c(72, 74, 69, 75, 70, 68, 74)  
boxplot(group1, group2, names = c("Tutored", "Non-Tutored"), 
        main = "Test Scores Comparison", 
        ylab = "Test Scores", 
        col = c("lightblue", "lightgreen"))
t_test_result <- t.test(group1, group2, alternative = "two.sided", var.equal = TRUE)
print(t_test_result)
