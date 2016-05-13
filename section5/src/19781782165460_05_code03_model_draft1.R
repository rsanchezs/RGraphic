#3 Adding model summaries in the plot 

plot(Murder ~ Assault, data = USArrests)
fit = lm(Murder ~ Assault, data = USArrests)
abline(reg = fit)

require("car")
scatterplot(Murder ~ Assault, data = USArrests, 
 smooth=FALSE, reg.line = lm, boxplots = FALSE)

scatterplot(Murder ~ Assault, data = USArrests, 
 smooth=TRUE, reg.line = lm, boxplots = FALSE)

plot(Murder ~ Assault, data = USArrests)
with(USArrests,lowess(Assault, Murder))
with(USArrests,lines(lowess(Assault, Murder), col = 2))
with(USArrests, loess.smooth(Assault, Murder))
with(USArrests, scatter.smooth(Murder ~ Assault))

number1 = mean(USArrests$Murder)
number2 = mean(USArrests$Assault)
text1 = bquote(paste(bar(x), " of murder = ", .(number1)))
text2 = bquote(paste(bar(x), " of assault = ", .(number2)))
text(100, 14, text1)
text(100, 15, text2)



plot(predict(fit) ~ Assault, data = USArrests)
plot(predict(fit), residuals(fit))
scatter.smooth(predict(fit), residuals(fit))
plot(fit)

scatterplot(Murder ~ Assault, data = USArrests)
scatterplot(predict(fit), residuals(fit))


