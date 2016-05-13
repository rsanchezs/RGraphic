VADeaths
rural.male = VADeaths[,1]
rural.male
age.group = rownames(VADeaths)
age.group
n.group = nrow(VADeaths)
n.group

barplot(rural.male)

barplot(rural.male, 
 main = "Rural male death rates per 1000 in Virginia", 
 sub = "Year 1940")

barplot(rural.male, horiz = TRUE, 
 main = "Rural male death rates per 1000 in Virginia", 
 sub = "Year 1940")

barplot(rural.male, horiz = TRUE, col = "dark green", 
 main = "Rural male death rates per 1000 in Virginia", 
 sub = "Year 1940")

barplot(rural.male, horiz = TRUE, col = 1:n.group, 
 main = "Rural male death rates per 1000 in Virginia", 
 sub = "Year 1940")

barplot(rural.male, horiz = TRUE, col = 1:n.group, 
 main = "Rural male death rates per 1000 in Virginia", 
 sub = "Year 1940", legend = age.group)

barplot(rural.male, horiz = TRUE, col = 1:n.group, 
 main = "Rural male death rates per 1000 in Virginia", 
 sub = "Year 1940")
legend("bottomright", age.group, fill=1:n.group)

