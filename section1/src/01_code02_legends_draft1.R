
View(VADeaths)

?VADeaths

##########################################################################

male.deaths <- VADeaths [,1]

female.deaths <- VADeaths [,2]

x.points = seq(from = 52,to = 72, by = 5)

#################################################################################

plot(x.points, male.deaths, type = "b", xlab = "age", ylab = "deaths", pch = "m")

lines(x.points, female.deaths, type = "b", pch = "f")

legend("topleft", legend=c("male","female"), title = "Rural", pch = 1:2)

##################################################################################

par(mar=c(bottom=0, left=0, top=0, right=0))

plot(x.points, male.deaths, type = "b", xlab = "age", ylab = "deaths", pch = "m")
lines(x.points, female.deaths, type = "b", pch = "f")
legend("topleft", legend=c("male","female"), title = "Rural", pch = 1:2)

###################################################################################

par(mar=c(bottom=4, left=4, top=0.1, right=0.1))
x.points = seq(from = 52,to = 72, by = 5)
plot(x.points, male.deaths, type = "b", pch = "m", xlab = "age", ylab = "deaths")
lines(x.points, female.deaths, type = "b", pch = "f")
legend("topleft", c("male","female"), title = "Rural", pch = c("m","f"),lty =1)
