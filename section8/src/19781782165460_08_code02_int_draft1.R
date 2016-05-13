#2 Interactive options


head(iris)
names(iris)


attach(iris)
plot(Sepal.Length, Petal.Length, col = 1:2)
identify(Sepal.Length, Petal.Length, labels=row.names(iris))
iris[14,]

install.packages("iplots",dep=TRUE)
require(iplots)

ibar(round(Petal.Length)) # barchart

ibox(Petal.Length,Species) # boxplots 
ihist(Sepal.Length) # histogram 

iplot(Sepal.Length, Petal.Length) # scatter plot
fit = lm(Petal.Length ~ Sepal.Length, data = iris)
iabline(fit)
ilines(lowess(Sepal.Length, Petal.Length))
itext(7,7, "text goes here")

iplot.data()

library(maps)
map.obj = map("state", plot=FALSE)
imap(map.obj)

ipcp(iris) #Parallel Coordinates Plot

