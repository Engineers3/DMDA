# Step 1: Create the data for each department

department_A <- c(50, 52, 55, 49, 51)
department_B <- c(60, 62, 64, 58, 61)
department_C <- c(45, 47, 48, 43, 44)
department <- factor(c(rep("A", length(department_A)),
                       rep("B", length(department_B)),
                       rep("C", length(department_C))))
income <- c(department_A, department_B, department_C)
data <- data.frame(department, income)
anova_result <- aov(income ~ department, data = data)
summary(anova_result)
