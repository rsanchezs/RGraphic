#1 Scatter plot and parameters
USArrests
head(USArrests)
names(USArrests)

plot(Murder ~ Assault, data = USArrests)

install.packages("car")
require(car)
scatterplot(Murder ~ Assault, data = USArrests, 
 smooth=FALSE, reg.line = FALSE, 
 boxplots = FALSE, grid = FALSE)

scatterplot(Murder ~ Assault, data = USArrests, 
 smooth=FALSE, reg.line = FALSE, 
 boxplots = FALSE, grid = TRUE)

install.packages("aplpack")
require(aplpack)
plot(Murder ~ Assault, data = USArrests, ylim = c(0, 25))
with(USArrests, boxplot2D(cbind(Assault, Murder), box.shift = 60))
# one dimensional projection of a two dimensional data set
with(USArrests, bagplot(Assault, Murder))
# bivariate generalization of the well known boxplot

