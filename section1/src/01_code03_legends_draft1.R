women

height = women[,1] 
weight = women[,2]


plot(height, weight, xlab = "Height", ylab = "Weight") 

text(65, 160, "Mean of height vs. mean of weight")

title(main = "Women aged 30?39")
title(sub = expression(mu))

expr = expression(paste(mu, " of height vs. ", mu , " of weight"))
text(65, 155, expr)

equation = expression(mu == frac(sum(x[i], i==1, n), n) )
text(65, 150, equation)

