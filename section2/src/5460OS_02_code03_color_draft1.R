#3 Controlling colors of plot elements
women


plot(women[,1], women[,2], xlab = "Height", 
 ylab = "Weight") 
plot(women[,1], women[,2], xlab = "Height", 
 ylab = "Weight", col = "red") 

plot(women[,1], women[,2], xlab = "Height", 
 ylab = "Weight", main = "Scatter plot", col.main = "red") 
plot(women[,1], women[,2], xlab = "Height", 
 ylab = "Weight") 
title(main = "Scatter plot", col.main = "pink")

plot(women[,1], women[,2], xlab = "Height", 
 ylab = "Weight", main = "Scatter plot", col.lab = "green") 


plot(women[,1], women[,2], axes = F, xlab = NA, ylab = NA)
box(col = "red")
axis(side = 1, col = "green")
axis(side = 2, col = "blue")
