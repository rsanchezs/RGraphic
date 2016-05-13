#2 Default time series plots

AirPassengers
cycle(AirPassengers)
start(AirPassengers)
end(AirPassengers)
frequency(AirPassengers)
tsp(AirPassengers)
#Time-Series-like Objects

plot(AirPassengers)

n = length(AirPassengers)
t1 = ts(AirPassengers[1:(n/2)])
t2 = ts(AirPassengers[(n/2+1):n])
ts.plot(t1,t2, col = 1:2)
legend("topleft", c("1949-1954","1955-1960"), col = 1:2, lty = 1)

t1 = window(AirPassengers, start=c(1949,1), end=c(1954,12))
t2 = window(AirPassengers, start=c(1955,1), end=c(1960,12))
ts.plot(t1,t2, col = 1:2)
legend("topleft", c("1949-1954","1955-1960"), col = 1:2, lty = 1)


# plot seasonal (or other) subseries
acf(AirPassengers)
# autocorrelation function
pacf(AirPassengers)
#  partial autocorrelations

install.packages("zoo")
require(zoo)

fit = lm(coredata(AirPassengers) ~ index(AirPassengers))
res = zoo(resid(fit), index(AirPassengers))
layout(c(1,2))
plot(AirPassengers)
plot(res)

install.packages("forecast")
require(forecast)

tfit1 = ets(AirPassengers)
tsdiag(tfit1)

tfit2 = auto.arima(AirPassengers)
tsdiag(tfit2)

layout(c(1,2))
plot(forecast(tfit1, 120))
plot(forecast(tfit2, 120))
