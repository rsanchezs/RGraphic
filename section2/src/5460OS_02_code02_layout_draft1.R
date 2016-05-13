#2 Controlling layouts and splits
women


hist(women[,1], xlab = "Height", main = "Histogram 1")
hist(women[,2], xlab = "weight", main = "Histogram 2")
plot(women[,1], women[,2], xlab = "Height", ylab = "Weight", main = "Scatter plot") 

par(mfrow = c(2,1))
hist(women[,1], xlab = "Height", main = "Histogram 1")
hist(women[,2], xlab = "weight", main = "Histogram 2")

par(mfrow = c(2,2))
hist(women[,1], xlab = "Height", main = "Histogram 1")
hist(women[,2], xlab = "weight", main = "Histogram 2")
plot(women[,1], women[,2], xlab = "Height", ylab = "Weight", main = "Scatter plot") 

lay.mat = matrix(c(1,2,3,3), nrow= 2, ncol = 2, byrow = T)
lay.mat
layout(lay.mat)
hist(women[,1], xlab = "Height", main = "Histogram 1")
hist(women[,2], xlab = "weight", main = "Histogram 2")
plot(women[,1], women[,2], xlab = "Height", ylab = "Weight", main = "Scatter plot") 

lay.mat = matrix(c(1,2,3,3), nrow= 2, ncol = 2, byrow = F)
lay.mat
layout(lay.mat)
hist(women[,1], xlab = "Height", main = "Histogram 1")
hist(women[,2], xlab = "weight", main = "Histogram 2")
plot(women[,1], women[,2], xlab = "Height", ylab = "Weight", main = "Scatter plot") 

hist(women[,1], xlab = "Height", main = "Histogram 1")
layout(1)
hist(women[,1], xlab = "Height", main = "Histogram 1")


