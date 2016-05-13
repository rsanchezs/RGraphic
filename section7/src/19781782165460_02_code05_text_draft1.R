#5 Drawing interactive 3D plot



x = seq(1,1000, 1)
y = sin(x)
z = cos(x)

install.packages("scatterplot3d")
require(scatterplot3d)
scatterplot3d(x,y,z)

require(rgl)
plot3d(x,y,z)
plot3d(x,y,z, col = rainbow(length(x)))
x2 = seq(.5,99.5, 1)
y2 = sin(x2)
z2 = cos(x2)
lines3d(x2,y2,z2)

require(car)
scatter3d(x,y,z, fit = NA)

require(mvtnorm)
x = y = seq(-4,4,.25)
func = function(x,y){
 dmvt(cbind(x,y), sigma = diag(2), df = 2)
}
z = outer(x,y,func)
scatter3d(x,y,z)
plot3d(x,y,z, col = rainbow(length(x)))
