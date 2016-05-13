#4 Trees and clustering


votes.repub


# agglomeration method complete
data(votes.repub)
# Hierarchical cluster analysis on a set of dissimilarities
votes.dist = hclust(dist(votes.repub), method = "complete")
plot(votes.dist)
# Draws rectangles around the branches of a dendrogram 
# highlighting the corresponding clusters. 
rect.hclust(votes.dist, k = 4, border = "red")

# agglomeration method ward
data(votes.repub)
# Hierarchical cluster analysis on a set of dissimilarities
votes.dist = hclust(dist(votes.repub), method = "ward")
plot(votes.dist)
# Draws rectangles around the branches of a dendrogram 
# highlighting the corresponding clusters. 
rect.hclust(votes.dist, k = 4, border = "red")


install.packages("cluster")
require(cluster)
data(votes.repub)
votes.cluster = agnes(votes.repub)
# Draws a clustering tree  / dendrogram of 
# hierarchical clustering
pltree(votes.cluster)

votes.dend  = as.dendrogram(as.hclust(votes.cluster))
plot(votes.dend)
plot(votes.dend, horiz = TRUE, center = TRUE,
     nodePar = list(lab.cex = 0.5, pch = NA),
     main = deparse(votes.cluster$call))



# Ward Hierarchical Clustering with Bootstrapped p values
install.packages("pvclust")
require(pvclust)
fit = pvclust(votes.repub, method.hclust="ward",
   method.dist="euclidean", nboot = 100)
plot(fit) # dendogram with p values
# add rectangles around groups highly supported by the data
pvrect(fit, alpha=.95)
#standard errors of AU p-values graphically
seplot(fit)
seplot(fit, identify = TRUE) 