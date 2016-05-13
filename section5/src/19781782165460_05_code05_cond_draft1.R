#5 Conditioning plots


pairs(~ Murder+Assault+Rape, data= USArrests)

condition = ifelse(USArrests$UrbanPop<=50, 1, 2)
pairs(~ Murder+Assault+Rape, data= USArrests, 
 col = condition, pch = condition)

require("car")
USArrests$above50 = USArrests$UrbanPop>50
scatterplotMatrix(~ Murder+Assault+Rape | above50, 
 data= USArrests)


