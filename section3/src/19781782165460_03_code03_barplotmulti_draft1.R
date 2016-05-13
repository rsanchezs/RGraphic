VADeaths
age.group = rownames(VADeaths)
age.group
n.group = nrow(VADeaths)
n.group

barplot(VADeaths, legend = age.group, beside=TRUE)

barplot(VADeaths, legend = age.group, beside=TRUE, col = 1:n.group)

barplot(VADeaths, legend = age.group, beside=TRUE, col = heat.colors(n.group))

barplot(VADeaths, legend = age.group, beside=TRUE, col = rainbow(n.group))

barplot(VADeaths, legend = age.group, beside=TRUE, col = rainbow(n.group),
 main = "Rural male death rates per 1000 in Virginia", 
 sub = "Year 1940")

barplot(VADeaths, legend = age.group, beside=FALSE, col = rainbow(n.group),
 main = "Rural male death rates per 1000 in Virginia", 
 sub = "Year 1940")

barplot(VADeaths, legend = age.group, beside=FALSE, col = rainbow(n.group),
 main = "Rural male death rates per 1000 in Virginia", 
 sub = "Year 1940", horiz = TRUE)

barplot(VADeaths, legend = age.group, beside=TRUE, col = rainbow(n.group),
 main = "Rural male death rates per 1000 in Virginia", 
 sub = "Year 1940", horiz = TRUE)
