#3 Drawing surfaceplot using base graphics 

volcano

persp(volcano)
persp(volcano, theta = 40)
persp(volcano, theta = 40, phi = 5)
persp(volcano, theta = 40, phi = 5, 
 ticktype = "detailed")
persp(volcano, theta = 40, phi = 5, 
 ticktype = "detailed", expand = .5)
persp(volcano, theta = 40, phi = 5, 
 ticktype = "detailed", expand = .5,
 shade = .2)
p = persp(volcano, theta = 40, phi = 5, 
 ticktype = "detailed", expand = .5,
 shade = .2)
points(p%*%p, col = "red", pch = 16)
lines(p%*%p, p%*%p*.1, col = "magenta")

install.packages("mvtnorm")
require(mvtnorm)
x = y = seq(-4,4,.25)
func = function(x,y){
 dmvt(cbind(x,y), sigma = diag(2), df = 2)
}
z = outer(x,y,func)
persp(x,y,z)
