VADeaths
rural.male = VADeaths[,1]
age.group = rownames(VADeaths)
n.group = nrow(VADeaths)

perc = round(rural.male/sum(rural.male)*100)
perc
pie.labels = paste(rownames(VADeaths), "(",perc, "%)", sep = "") 
pie.labels

pie(rural.male, main = "Rural male death rates per 1000 in Virginia", 
 sub = "Year 1940", col = rainbow(n.group), clockwise = TRUE)
 
 pie(rural.male, main = "Rural male death rates per 1000 in Virginia", 
  sub = "Year 1940", col = rainbow(n.group), clockwise = TRUE,
  labels = pie.labels)

b.plot = barplot(rural.male)
text(x=b.plot, y=rural.male, labels=rural.male)

b.plot = barplot(rural.male, ylim = c(0,70))
text(x=b.plot, y=rural.male, labels=rural.male)

perc
bar.labels = paste(perc, "%") 
b.plot = barplot(rural.male, ylim = c(0,70))
text(x=b.plot, y=rural.male, labels=bar.labels, pos=3)