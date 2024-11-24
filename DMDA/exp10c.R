
data("iris")
install.packages("caret")
install.packages("C50")
library(caret)
library(C50)
set.seed(7)
inTraininglocal <- createDataPartition(iris$Species, p = .70, list = FALSE)
training <- iris[inTraininglocal, ]
testing <- iris[-inTraininglocal, ]
model <- C5.0(Species ~ ., data = training)
summary(model)
pred <- predict(model, testing[, -5])  # use predict() instead of predict.C5.0()
a <- table(testing$Species, pred)
accuracy <- sum(diag(a)) / sum(a)
print(accuracy)
plot(model)
