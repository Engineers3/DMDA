
# Create a sample of 50 numbers which are incremented by 1.
x <- seq(0,50,by = 1)
# Create the binomial distribution.
y <- dbinom(x,50,0.5)
png(file = "dbinom.png")
plot(x,y)
dev.off()
plot(x,y)