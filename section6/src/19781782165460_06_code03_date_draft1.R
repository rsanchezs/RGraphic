#3 plotting date and time variables

AirPassengers
require(zoo)
dt1 = coredata(AirPassengers)[1:12]

start(AirPassengers)
dt0 = seq(as.Date("1949-01-01"),as.Date("1949-12-01"), length = 12)
dt0 = seq(as.Date("1949-01-01"),as.Date("1949-12-01"), by = "months")

plot(dt0, dt1, type = "l", xaxt = "n", xlab = "", ylab = "")
lab = month.abb[as.numeric(format(dt0, format = "%m"))]
axis.Date(1, at = dt0, labels = lab)

plot(dt0, dt1, type = "l", xaxt = "n", xlab = "", ylab = "")
lab = month.abb[as.numeric(format(dt0, format = "%m"))]
axis.Date(1, at = dt0, labels = lab)
axis.Date(1, at = dt0, labels = lab, las = 2)




