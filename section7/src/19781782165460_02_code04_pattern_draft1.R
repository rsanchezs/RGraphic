#4 Drawing surfaceplot using Lattice and other packages

volcano

install.packages("lattice")
require(lattice)
wireframe(volcano)
cloud(volcano)

install.packages("TeachingDemos")
require(TeachingDemos)
rotate.wireframe(volcano)

install.packages("rgl")
require(rgl)  
open3d()
z = volcano
x = 1:dim(z)[1]
y = 1:dim(z)[2]
surface3d(x, y, z)

require(mvtnorm)
x = y = seq(-4,4,.25)
func = function(x,y){
 dmvt(cbind(x,y), sigma = diag(2), df = 2)
}
z = outer(x,y,func)
surface3d(x,y,z)