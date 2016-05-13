#4 Sub-grouping in a scatter plot 

fit1 = lm(Murder ~ Assault, data = USArrests, subset = UrbanPop<=50)
fit2 = lm(Murder ~ Assault, data = USArrests, subset = UrbanPop>50)

par(mar=c(4, 4, 2, 0.1))
layout(matrix(c(1,2,3,3), 2,2, byrow = TRUE))

with(subset(USArrests, UrbanPop <= 50), 
 scatter.smooth(Assault, Murder, span=.5), col = 4)
abline(fit1, col = 1, lty = 2)

with(subset(USArrests, UrbanPop>50), 
 scatter.smooth(Assault, Murder, span=.5), col = 5)
abline(fit2, col = 2, lty = 2)

plot(1,1, xlim = c(0,400), ylim = c(0,20), 
 type = "n", axes =FALSE, xlab = "", ylab = "")
points(Murder ~ Assault, data = USArrests, 
 subset = UrbanPop <= 50, col = 1, pch = 1)
points(Murder ~ Assault, data = USArrests, 
 subset = UrbanPop>50, col = 2, pch = 2)
title(main = "Overall")
axis(1)
axis(2)
box()
mtext(side = 1, line = 3, "Assault")
mtext(side = 2, line = 3, "Murder")
legend("topleft", c("Urban % <= 50","Urban % > 50"), 
 pch = 1:2, col = 1:2)
fit = lm(Murder ~ Assault, data = USArrests)
abline(fit, lty = 2)
with(USArrests,lines(lowess(Assault, Murder), col = 1))


USArrests$above50 = USArrests$UrbanPop>50
scatterplot(Murder ~ Assault| above50, 
 data= USArrests)