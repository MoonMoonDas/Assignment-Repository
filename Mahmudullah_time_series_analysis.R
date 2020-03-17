
#Plotting Time Series
Mahmudulah_time_series<- c(0,6,30,0,0,41,0,38,0,0,128,51,0,51,314,26,0,0,50,0,0,0,65,0,0,0,0,0,0,0,0,0,87,138,0,4,0,0,13,7,140,137,0,0,0,63,0,0,109,0,0,0,0,0,110,0,156,0,0,44,0,36,0,0,84,190,47,0,0,0,0,0,0,0,76,0,0,0,0,0,0,0,0,0)
print(Mahmudulah_time_series)
plot(Mahmudulah_time_series)

Mahmudullahtimeseries<- ts(Mahmudulah_time_series,start=c(2014,1),frequency = 12)
print(Mahmudullahtimeseries)
plot(Mahmudullahtimeseries)

logMahmudullahtimeseries <- log(Mahmudullahtimeseries)
plot.ts(logMahmudullahtimeseries)

#------Decomposing Time Series--------
#Decomposing Non-Seasonal Data

install.packages("TTR")
library(TTR)

MahmudullahtimeseriesSMA3 <- SMA(Mahmudullahtimeseries,n=3)
plot(MahmudullahtimeseriesSMA3)
MahmudullahtimeseriesSMA8 <- SMA(Mahmudullahtimeseries,n=8)
plot(MahmudullahtimeseriesSMA8)

#Decomposing Seasonal Data
Mahmudullahtimeseriescomponents <- decompose(Mahmudullahtimeseries)
plot(Mahmudullahtimeseriescomponents)

#Seasonally Adjusting
Mahmudullahtimeseriescomponents <- decompose(Mahmudullahtimeseries)
Mahmudullahtimeseriesseasonallyadjusted <- Mahmudullahtimeseries - Mahmudullahtimeseriescomponents$seasonal
plot(Mahmudullahtimeseriesseasonallyadjusted)
