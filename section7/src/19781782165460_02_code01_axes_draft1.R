#1 Drawing contour plots in base package

volcano
dim(volcano)

image(volcano)
image(volcano, col = terrain.colors(ncol(volcano)))
image(volcano, col = cm.colors(ncol(volcano)))
image(volcano, col = topo.colors(ncol(volcano)))
image(volcano, col = rainbow(ncol(volcano)))

contour(volcano)
contour(volcano, asp = 1, labcex = 1)
contour(volcano, col = terrain.colors(ncol(volcano)))

filled.contour(volcano)
filled.contour(volcano, col = terrain.colors(ncol(volcano)))
filled.contour(volcano, col = cm.colors(ncol(volcano)))
filled.contour(volcano, col = topo.colors(ncol(volcano)))
filled.contour(volcano, col = rainbow(ncol(volcano)))

