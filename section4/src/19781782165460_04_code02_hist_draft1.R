#2 Histogram , comparison and handling bins

ChickWeight
names(ChickWeight)
ChickWeight$weight[ChickWeight$Diet==1]
wdt1 = ChickWeight$weight[ChickWeight$Diet==1]
wdt2 = ChickWeight$weight[ChickWeight$Diet==2]

hist(wdt1)
hist(wdt1, xlab = "Weight of chicks", main = "")
hist(wdt1, xlab = "Weight of chicks", main = "", breaks = 15)
bin = seq(0,350, 70)
hist(wdt1, xlab = "Weight of chicks", main = "", breaks = bin)
bin = seq(0,350, 35)
hist(wdt1, xlab = "Weight of chicks", main = "", breaks = bin)
hist(wdt1, xlab = "Weight of chicks", main = "", breaks = bin, 
 prob = TRUE)

hist(wdt1, xlab = "Weight of chicks", main = "", breaks = bin, 
 prob = TRUE, col = "grey")
hist(wdt1, xlab = "Weight of chicks", main = "", breaks = bin, 
 prob = TRUE, col = heat.colors(length(bin)))
hist(wdt1, xlab = "Weight of chicks", main = "", breaks = bin, 
 prob = TRUE, col = heat.colors(length(bin)), border = FALSE)

# non-equi-spaced histogram
bin = c(seq(0,150, 35), 250, 350)
hist(wdt1, xlab = "Weight of chicks", main = "", breaks = bin, 
 prob = TRUE, col = heat.colors(length(bin)), border = FALSE)

# shading lines
hist(wdt1, xlab = "Weight of chicks", main = "", breaks = bin, 
 prob = TRUE, col = rainbow(length(bin)), border = FALSE,
 density = 15)

# listing the components of a histogram object
hist.obj = hist(wdt1, xlab = "Weight of chicks", main = "", breaks = bin, 
 prob = TRUE, col = rainbow(length(bin)), border = FALSE,
 density = 15)
hist.obj
names(hist.obj) 
?hist
