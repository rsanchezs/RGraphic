#4 Controlling line pattern and width
VADeaths

male.deaths = VADeaths[,1]
female.deaths = VADeaths[,2]
x.points = seq(from = 52,to = 72, by = 5)

plot(x.points, male.deaths, type = "l", xlab = "age", ylab = "deaths", lty = 1)
lines(x.points, female.deaths, type = "l", lty = 2)
legend("topleft", legend=c("male","female"), title = "Rural", lty = 1:2)

plot(x.points, male.deaths, type = "l", xlab = "age", ylab = "deaths", lty = 1, lwd = 1)
lines(x.points, female.deaths, type = "l", lty = 2, lwd = 2)
legend("topleft", legend=c("male","female"), title = "Rural", lty = 1:2, lwd = 1:2)