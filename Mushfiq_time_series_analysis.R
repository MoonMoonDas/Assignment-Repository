
#Plotting Time Series
Mushfiq_time_series<- c(0,253,78,0,0,70,0,90,0,0,202,11,0,107,191,220,0,69,24,0,0,0,156,0,0,0,0,0,0,0,0,0,44,112,0,42,0,0,1,0,116,163,0,0,0,178,0,0,142,0,0,0,0,0,110,0,302,83,0,133,0,46,0,0,166,327,215,0,0,0,0,0,0,0,74,0,0,0,0,0,0,0,0,0)
print(Mushfiq_time_series)
plot(Mushfiq_time_series)

Mushfiqtimeseries<- ts(Mushfiq_time_series,start=c(2014,1),frequency = 12)
print(Mushfiqtimeseries)
plot(Mushfiqtimeseries)

logMushfiqtimeseries <- log(Mushfiqtimeseries)
plot.ts(logMushfiqtimeseries)

#------Decomposing Time Series--------
#Decomposing Non-Seasonal Data

install.packages("TTR")
library(TTR)

MushfiqtimeseriesSMA3 <- SMA(Mushfiqtimeseries,n=3)
plot(MushfiqtimeseriesSMA3)
MushfiqtimeseriesSMA8 <- SMA(Mushfiqtimeseries,n=8)
plot(MushfiqtimeseriesSMA8)

#Decomposing Seasonal Data
Mushfiqtimeseriescomponents <- decompose(Mushfiqtimeseries)
plot(Mushfiqtimeseriescomponents)

#Seasonally Adjusting
Mushfiqtimeseriescomponents <- decompose(Mushfiqtimeseries)
Mushfiqtimeseriesseasonallyadjusted <- Mushfiqtimeseries - Mushfiqtimeseriescomponents$seasonal
plot(Mushfiqtimeseriesseasonallyadjusted)
