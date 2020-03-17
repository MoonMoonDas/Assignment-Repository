
#Plotting Time Series
tamim_time_series<- c(0,0,0,0,0,4,0,118,0,0,137,29,0,19,135,312,0,78,67,0,0,0,132,0,0,0,0,0,0,0,0,0,100,194,0,114,0,0,127,4,199,293,0,0,0,23,0,0,252,0,0,0,0,0,287,0,2,0,0,143,0,10,0,0,176,205,51,0,0,0,0,0,0,0,310,0,0,0,0,0,0,0,0,0)

print(tamim_time_series)
plot(tamim_time_series)

tamimstimeseries<- ts(tamim_time_series,start=c(2014,1),frequency = 12)
print(tamimstimeseries)
plot(tamimstimeseries)

logtamimstimeseries <- log(tamimstimeseries)
plot.ts(logtamimstimeseries)

#------Decomposing Time Series--------
#Decomposing Non-Seasonal Data

install.packages("TTR")
library(TTR)

TamimtimeseriesSMA3 <- SMA(tamimstimeseries,n=3)
plot(TamimtimeseriesSMA3)
TamimtimeseriesSMA8 <- SMA(tamimstimeseries,n=8)
plot(TamimtimeseriesSMA8)

#Decomposing Seasonal Data
Tamimtimeseriescomponents <- decompose(tamimstimeseries)
plot(Tamimtimeseriescomponents)

#Seasonally Adjusting
Tamimtimeseriescomponents <- decompose(tamimstimeseries)
Tamimstimeseriesseasonallyadjusted <- tamimstimeseries - Tamimtimeseriescomponents$seasonal
plot(Tamimstimeseriesseasonallyadjusted)
