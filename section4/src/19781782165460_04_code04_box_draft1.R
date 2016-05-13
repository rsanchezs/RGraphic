#4 Boxplots and parameters

ChickWeight
names(ChickWeight)
ChickWeight$weight[ChickWeight$Diet==1]
wdt1 = ChickWeight$weight[ChickWeight$Diet==1]
wdt2 = ChickWeight$weight[ChickWeight$Diet==2]

boxplot(wdt1, xlab = "Weight of chicks")
boxplot(wdt1, xlab = "Weight of chicks", boxwex = 2)
boxplot(wdt1, xlab = "Weight of chicks", boxwex = .5)
boxplot(wdt1, xlab = "Weight of chicks", boxwex = .5, 
 notch = TRUE)
boxplot(wdt1, xlab = "Weight of chicks", boxwex = .5, 
 notch = TRUE, outline = FALSE)
boxplot(wdt1, xlab = "Weight of chicks", boxwex = .5, 
 notch = TRUE, outline = FALSE, horizontal = TRUE)
boxplot(wdt1, xlab = "Weight of chicks", boxwex = .5, 
 notch = TRUE, outpch=2)
?boxplot

boxplot.stats(wdt1)


