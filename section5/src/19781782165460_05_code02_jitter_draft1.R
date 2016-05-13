#2 Adding straight lines and jitter points

x = rep(c(0,100), each = 10)
y = sample(1:10, size = length(x), replace = TRUE)

plot(x,y, col = "red")
plot(jitter(x),y, col = "red")
plot(jitter(x, factor = .5),y, col = "red")
plot(jitter(x, factor = 1.5),y, col = "red")

require(car)
scatterplot(x, y, jitter = list(x = 1),
 smooth=FALSE, reg.line = FALSE, boxplots = FALSE)


plot(jitter(x, factor = 1.5),y, col = "red")
abline(v = 50, lwd = 3, col = "dark grey")
abline(h = 10.1, lwd = 3, col = "blue")
segments(x0=0, y0=5, x1=50, y1=5, lwd = 2, col = 2)
arrows(x0=50, y0=5, x1=100, y1=10, lwd = 2, col = 3)

