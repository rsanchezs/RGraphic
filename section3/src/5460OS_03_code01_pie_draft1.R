VADeaths
rural.male = VADeaths[,1]
rural.male
age.group = rownames(VADeaths)
age.group
n.group = nrow(VADeaths)
n.group

pie(rural.male)

pie(rural.male, main = "Rural male death rates per 1000 in Virginia", 
 sub = "Year 1940")

pie.labels = paste("Age", age.group)
pie.labels
pie(rural.male, main = "Rural male death rates per 1000 in Virginia", 
 sub = "Year 1940", labels = pie.labels)

pie(rural.male, main = "Rural male death rates per 1000 in Virginia", 
 sub = "Year 1940", labels = pie.labels, 
 col = 1:n.group)

pie(rural.male, main = "Rural male death rates per 1000 in Virginia", 
 sub = "Year 1940", labels = pie.labels, 
 col = rainbow(n.group))

pie(rural.male, main = "Rural male death rates per 1000 in Virginia", 
 sub = "Year 1940", labels = pie.labels, 
 col = rainbow(n.group), clockwise = TRUE)

