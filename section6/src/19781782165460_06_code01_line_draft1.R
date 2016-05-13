#setwd("C:/Users/wildscop/Dropbox/R-video making/video drafts/5460OS_R_graph_Essentials")
#1 Plotting basic line graphs using a function

AirPassengers
class(AirPassengers)
ap.matrix = matrix(AirPassengers, ncol = 12, byrow = T)
ap.matrix

plot(ap.matrix[1,], type = "b", axes = FALSE, xlab = "", ylab = "")
axis(2)
mtext(side = 2, line = 3, "total passengers")
axis(1, at=1:12, labels= month.abb, las = 2)
lines(ap.matrix[2,], type = "b", col = 2)

timeplot = plot(ap.matrix[1,], type = "b", xlab = "", ylab = "", 
 axes = FALSE,  ylim = range(ap.matrix[1:2,]))
axis(2)
mtext(side = 2, line = 3, "total passengers")
axis(1, at=1:12, labels=month.abb, las = 2)
lines(ap.matrix[2,], type = "b", col = 2)
legend("topleft",legend = c(1949,1950), col = 1:2, lty = 1, pch = 1)


plot(ap.matrix[1,], type = "b", xlab = "", ylab = "", 
 axes = FALSE,  ylim = range(ap.matrix[1:2,]))
axis(2)
mtext(side = 2, line = 3, "total passengers")
axis(1, at=1:12, labels=rep("",12), las = 2)
text(1:12, par("usr")[3], labels = month.abb, 
 srt = 45, xpd = TRUE, pos = 1, cex = .8)
lines(ap.matrix[2,], type = "b", col = 2)
legend("topleft",legend = c(1949,1950), col = 1:2, lty = 1, pch = 1)


