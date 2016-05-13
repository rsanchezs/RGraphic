#2 Drawing contour plots in Lattice


volcano

install.packages("lattice")
require(lattice)

contourplot(volcano)

levelplot(volcano)
levelplot(volcano, scales = list(draw = FALSE))

install.packages("rgeos")
install.packages("raster")
require(raster)

vol.r = cut(raster(t(volcano)), breaks = 5)
# RasterLayer object
pol.r = rasterToPolygons(rc, dissolve=TRUE)
# Raster image to polygons conversion
spplot(pol.r)


vol.r = cut(raster(t(volcano)), breaks = 15)
pol.r = rasterToPolygons(vol.r, dissolve=TRUE)
spplot(pol.r)