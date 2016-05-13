#1 Stem-and-leaf plot

ChickWeight
# Weight versus age of chicks on different diets
names(ChickWeight)
# body weight of the chick (weight)
# number of days since birth when the measurement was made (time)
# unique identifier (chick)
# experimental diet (diet)

wdt1 = ChickWeight$weight[ChickWeight$Diet==1]
wdt2 = ChickWeight$weight[ChickWeight$Diet==2]


stem(wdt1)
help(stem)
stem(wdt1, scale = 2) 
#controls the plot length

stem(wdt1, scale = 2, width = 1)
# desired width of plot

install.packages("aplpack")
# Another Plot PACKage
require("aplpack")


stem.leaf(wdt1)

stem.leaf.backback(wdt1, wdt2)
stem.leaf.backback(wdt1, wdt2, back.to.back = FALSE)




