input <- mtcars[,c("am","mpg","hp")]
print(head(input))
input <- mtcars
result <- aov(mpg~hp*am,data = input)
print(summary(result))
result <- aov(mpg~hp+am,data = input)
print(summary(result))
result1 <- aov(mpg~hp*am,data = input)
result2 <- aov(mpg~hp+am,data = input)
print(anova(result1,result2))

