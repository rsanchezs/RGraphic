#5 Side-by-side boxplots and parameters

ChickWeight
names(ChickWeight)
ChickWeight$weight[ChickWeight$Diet==1]
wdt1 = ChickWeight$weight[ChickWeight$Diet==1]
wdt2 = ChickWeight$weight[ChickWeight$Diet==2]

boxplot(weight~Diet, data = ChickWeight)

boxplot(weight~Diet, data = ChickWeight, axes = FALSE)
axis(2)
diet.names = paste("Diet", 1:4)
axis(1, at=1:4, label = diet.names)

ChickWeight12 = subset(ChickWeight, Diet==1|Diet==2)
boxplot(weight~Diet==1, data = ChickWeight12, axes = FALSE)
axis(2)
diet.names = paste("Diet", 1:2)
axis(1, at=1:2, label = diet.names)

boxplot(weight~Diet, data = ChickWeight, varwidth = TRUE)

boxplot(weight~Diet, data = ChickWeight, varwidth = TRUE, 
 col = rainbow(4))

x = boxplot(weight~Diet, data = ChickWeight, varwidth = TRUE,
 col = rainbow(4))
names(x)
x
#  width proportional to the number of observations 
axis(side = 3, at = 1:4, labels = x$n)

boxplot(weight~Diet, data = ChickWeight, varwidth = TRUE,
 col = rainbow(4), 
 boxcol = "blue", boxlwd = 2, 
 medcol = "pink", boxlwd = 4,
 whiskcol = "dark green", whisklwd = 2,
 staplecol = "red", staplelwd = 4,
 outcol = "yellow", outlwd = 2)
