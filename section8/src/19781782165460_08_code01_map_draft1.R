#1 Creating maps


install.packages("maptools")
require(maptools)
data(wrld_simpl)
plot(wrld_simpl)

data(state.vbm)
plot(state.vbm)

install.packages("maps")
require(maps)
map("italy")
map("france", fill = TRUE, col = "red")
map("county", fill = TRUE, col = palette())
map("county", "new jersey") # # county map of New Jersey
map.text("county", "new jersey")

map("state", c("new jersey","nevada"))
map("state", interior = FALSE)
map("state", boundary = FALSE, lty = 3)
map("state", boundary = TRUE, lty = 3)

identify(map("world", fill = TRUE, col = "yellow"))

data(votes.repub)
yrs = names(votes.repub[1,])
vote.by.yr = votes.repub[, yrs[1]]
map.obj = map("state", fill = TRUE, plot = FALSE)
fit = smooth.map(map.obj, vote.by.yr, merge = TRUE, 
 averages = TRUE, type = "smooth")
head(fit)
median.list = tapply(fit$z, fit[c("x","y")], median)
image(median.list)
filled.contour(median.list, color.palette = heat.colors)



