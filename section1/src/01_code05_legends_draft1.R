women

plot(women[,1], women[,2], xlab = "Height", ylab = "Weight") 

pdf(file = "plot/example2.pdf")
plot(women[,1], women[,2], xlab = "Height", ylab = "Weight") 
dev.off()

