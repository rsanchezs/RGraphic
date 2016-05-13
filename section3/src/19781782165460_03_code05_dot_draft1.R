VADeaths
age.group = rownames(VADeaths)
age.group
distribution = colnames(VADeaths)
distribution
n.group = nrow(VADeaths)

rural.male = VADeaths[,1]
rural.female = VADeaths[,2]
urban.male = VADeaths[,3]
urban.female = VADeaths[,4]

dotchart(rural.male, labels=age.group, pch = 20)

death = c(rural.male, rural.female, urban.male, urban.female)
death
group = rep(1:4, each = 5)
group
age.group2 = rep(age.group, times = 5)
age.group2

dotchart(death, labels=age.group2, groups= group, pch = 15,
 main = "Dotplot",
 xlab="Death rates per 1000 in Virginia", 
 color=group)
legend("bottomright", distribution, col=1:length(distribution), pch = 15)