#5 Setting appropriate time axes

AirPassengers

require(zoo)
dt1 = coredata(AirPassengers)[1:24]
dt0 = seq(as.Date("1949-01-01"),as.Date("1950-12-01"), by = "months")

plot(dt0, dt1, type = "l", xaxt = "n", xlab = "", ylab = "")
lab = dt0
axis.Date(1, at = lab, labels = lab, las = 2)

lab = as.yearmon(lab)
plot(dt0, dt1, type = "l", xaxt = "n", xlab = "", ylab = "")
axis.Date(1, at = lab, labels = lab, las = 2)

plot(dt0, dt1, type = "l", xaxt = "n", xlab = "", ylab = "")
ticks.at = seq(min(dt0), max(dt0), by = "months")
ticks.lab = format(ticks.at, format = "%b")
jan = (ticks.lab == "Jan")
axis(2)
Axis(dt0, at = ticks.at[!jan], side = 1, labels = ticks.lab[!jan], 
 las = 2, cex.axis = 0.7)
Axis(dt0, side = 1, las = 2)
