#5 Controlling texts of plot elements

women


plot(women[,1], women[,2], xlab = "Height", ylab = "Weight", main = "Scatter plot") 
plot(women[,1], women[,2], xlab = "Height", ylab = "Weight", main = "Scatter plot", cex.main = 3) 
plot(women[,1], women[,2], xlab = "Height", ylab = "Weight", main = "Scatter plot", cex.lab= 2) 

plot(women[,1], women[,2], xlab = "Height", ylab = "Weight") 
text(65, 150, "women aged 30–39", col="red")
text(65, 145, "women aged 30–39", col="red", cex = 2)
mtext(side = 4, "Weight")
title(main = "Scatter plot", font.main = 1)

plot(women[,1], women[,2], xlab = "Height", ylab = "Weight") 
text(65, 150, "women aged 30–39", col="red")
text(65, 145, "women aged 30–39", col="red", cex = 2)
mtext(side = 4, "Weight")
title(main = "Scatter plot", font.main = 2)

plot(women[,1], women[,2], xlab = "Height", ylab = "Weight") 
text(65, 150, "women aged 30–39", col="red")
text(65, 145, "women aged 30–39", col="red", cex = 2)
mtext(side = 4, "Weight")
title(main = "Scatter plot", font.main = 3)
