BOD
?BOD
View(BOD)
plot(demand ~ Time, data = BOD)
plot(demand ~ Time, data = BOD, type = "l")
plot(demand ~ Time, data = BOD, type = "b")
?plot
plot(demand ~ Time, type = "l", data = BOD, main="Biochemical Oxygen")
plot(demand ~ Time, data = BOD, main="Biochemical Oxygen", sub = "Relationship between demand and time")
plot(demand ~ Time, type = "l", data = BOD, main="Biochemical Oxygen", 
 sub = "Relationship between demand and time", xlab = "time in days", ylab = "demand in mg/l")
