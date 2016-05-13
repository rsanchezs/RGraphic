#4 Plotting trend

AirPassengers

plot(AirPassengers)
yearly.mean = aggregate(AirPassengers, nfrequency=1, FUN=mean)
lines(1949:1960, yearly.mean, col = "red") 
# Splits the data into subsets, 
# computes summary statistics for each, 
# and returns the result in a convenient form.

require(zoo)
fit = lm(coredata(AirPassengers) ~ index(AirPassengers))
res = zoo(resid(fit), index(AirPassengers))
layout(c(1,2))
plot(AirPassengers)
yearly.mean = aggregate(AirPassengers, 1, mean)
lines(1949:1960, yearly.mean, col = "red") 
plot(res)
yearly.mean = aggregate(res, trunc, mean)
lines(1949:1960, yearly.mean, col = "red") 

lfit = loess(coredata(AirPassengers) ~ index(AirPassengers))
plot(AirPassengers)
lines(1949:1960, yearly.mean, col = "red") 
lines(predict(lfit) ~ index(AirPassengers), col = "blue")

# special kind of seasonal plot 
dfit1 = stl(AirPassengers, s.window = "per")
plot(dfit1)
# easonal Decomposition of Time Series by Loess

require(forecast)
dfit2 = stlf(AirPassengers,s.window="per")
plot(dfit2)
# Forecasting using stl objects

monthplot(AirPassengers) 

seasonplot(AirPassengers)
# require(zoo)