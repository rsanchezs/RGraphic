#1 Controlling axes and boxes
women

plot(women[,1], women[,2], xlab = "Height", ylab = "Weight") 

plot(women[,1], women[,2], axes = F, xlab = NA, ylab = NA)
box()
axis(side = 1)
mtext(side = 1, "Height", line = 3)
axis(side = 2)
mtext(side = 2, "Weight", line = 3)


plot(women[,1], women[,2], axes = F, xlab = NA, ylab = NA)
box()
axis(side = 1)
mtext(side = 1, "Height", line = 3)
y.points = seq(120, 160, 5)
axis(2, at=y.points,labels=y.points)
mtext(side = 2, "Weight", line = 3)


plot(women[,1], women[,2], axes = F, xlab = NA, ylab = NA)
box()
axis(side = 1)
mtext(side = 1, "Height", line = 3)
y.points = seq(120, 160, 5)
axis(2, at=y.points,labels=y.points, las = 1)
mtext(side = 2, "Weight", line = 3)

plot(women[,1], women[,2], axes = F, xlab = NA, ylab = NA)
box()
axis(side = 1)
mtext(side = 1, "Height", line = 3)
y.points = seq(120, 160, 10)
axis(2, at=y.points,labels=y.points)
mtext(side = 2, "Weight", line = 3)
axis(4, at=y.points,labels=y.points)
