
#Plotting Time Series
Ashraful_time_series<- c(0,119,32,18,0,0,29,140,0,20,0,96,0,101,88,128,41,0,53,0,0,0,0,98,0,0,141,81,0,243,14,5,6,108,78,0,69,0,0,0,0,0,140,148,0,86,5,0,121,37,0,0,0,29,27,0,0,0,0,6,0,1,11,0,0,0,0,23,0,2,0,0,0,0,29,0,42,0,0,0,0,0,0,0)
print(Ashraful_time_series)
plot(Ashraful_time_series)

Ashrafultimeseries<- ts(Ashraful_time_series,start=c(2006,1),frequency = 12)
print(Ashrafultimeseries)
plot(Ashrafultimeseries)

LogAshrafultimeseries <- log(Ashrafultimeseries)
plot.ts(LogAshrafultimeseries)

#------Decomposing Time Series--------
#Decomposing Non-Seasonal Data

install.packages("TTR")
library(TTR)

AshrafultimeseriesSMA3 <- SMA(Ashrafultimeseries,n=3)
plot(AshrafultimeseriesSMA3)
AshrafultimeseriesSMA8 <- SMA(Ashrafultimeseries,n=8)
plot(AshrafultimeseriesSMA8)

#Decomposing Seasonal Data
Ashrafultimeseriescomponents <- decompose(Ashrafultimeseries)
plot(Ashrafultimeseriescomponents)

#Seasonally Adjusting
Ashrafultimeseriescomponents <- decompose(Ashrafultimeseries)
Ashrafultimeseriesseasonallyadjusted <- Ashrafultimeseries - Ashrafultimeseriescomponents$seasonal
plot(Ashrafultimeseriesseasonallyadjusted)
