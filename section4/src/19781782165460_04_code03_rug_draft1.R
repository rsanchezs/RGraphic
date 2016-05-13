#3 Density, rug representation and overlay plots


ChickWeight
names(ChickWeight)
ChickWeight$weight[ChickWeight$Diet==1]
wdt1 = ChickWeight$weight[ChickWeight$Diet==1]
wdt2 = ChickWeight$weight[ChickWeight$Diet==2]

density(wdt1)
plot(density(wdt1), xlab = "Weight of chicks", main = "")
rug(wdt1)
rug(wdt1, side = 3, col = "dark green")

hist(wdt1, xlab = "Weight of chicks", main = "", breaks = seq(0,350, 35), 
 prob = TRUE)
lines(density(wdt1), col = "red", lwd = 2, lty = 2)
polygon(density(wdt1), border = "blue", lwd = 2, lty = 4)
curve(dgamma(x, shape = 3, scale = 25), col = "green", , lwd = 2,
 add = TRUE)
