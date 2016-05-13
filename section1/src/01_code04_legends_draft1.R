male.deaths <- VADeaths [,1]
female.deaths <- VADeaths [,2]
x.points = seq(from = 52,to = 72, by = 5)

plot(x.points, male.deaths, type = "b", xlab = "age", ylab = "deaths", pch = 1)
lines(x.points, female.deaths, type = "b", pch = 2)
legend("topleft", legend=c("male","female"), title = "Rural", pch = 1:2)

plot(x.points, male.deaths, type = "b", xlab = "age", ylab = "deaths", pch = 1)
lines(x.points, female.deaths, type = "b", pch = 2)
legend("topleft", legend=c("male","female"), title = "Rural", lty = 1, pch = 1:2)


plot(x.points, male.deaths, type = "b", xlab = "age", ylab = "deaths", col = "red")
lines(x.points, female.deaths, type = "b", col = "green")
legend("topleft", legend=c("male","female"), title = "Rural", lty = 1, col = c("red", "green"))
