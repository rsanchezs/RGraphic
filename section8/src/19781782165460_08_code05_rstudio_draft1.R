#5 RStudio interface for graphics

head(iris)
names(iris)
dim(iris)
iris2 = iris[1:120,]
x = iris2$Sepal.Length
y = iris2$Sepal.Width
z = iris2$Petal.Length
sp = iris2$Species
boxplot(x ~ sp)
boxplot(y ~ sp)
boxplot(z ~ sp)
?boxplot