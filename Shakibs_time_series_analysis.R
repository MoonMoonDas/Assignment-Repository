#Plotting Time Series
Shakib_time_series<- c(0,27,64,0,0,56,0,0,0,0,142,0,0,109,87,38,0,123,48,0,0,0,16,0,0,0,0,0,0,0,0,0,65,103,0,84,0,0,72,54,39,168,0,0,0,97,0,0,63,0,0,0,0,0,190,0,49,0,0,95,0,0,0,0,140,476,130,0,0,0,0,0)
print(Shakib_time_series)
plot(Shakib_time_series)

Shakibtimeseries<- ts(Shakib_time_series,start=c(2014,1),frequency = 12)
print(Shakibtimeseries)
plot(Shakibtimeseries)

logshakibstimeseries <- log(Shakibtimeseries)
plot.ts(logshakibstimeseries)

#------Decomposing Time Series--------
#Decomposing Non-Seasonal Data

install.packages("TTR")
library(TTR)

ShakibtimeseriesSMA3 <- SMA(Shakibtimeseries,n=3)
plot(ShakibtimeseriesSMA3)
ShakibtimeseriesSMA8 <- SMA(Shakibtimeseries,n=8)
plot(ShakibtimeseriesSMA8)

#Decomposing Seasonal Data
Shakibtimeseriescomponents <- decompose(Shakibtimeseries)
plot(Shakibtimeseriescomponents)

#Seasonally Adjusting
Shakibtimeseriescomponents <- decompose(Shakibtimeseries)
Shakibtimeseriesseasonallyadjusted <- Shakibtimeseries - Shakibtimeseriescomponents$seasonal
plot(Shakibtimeseriesseasonallyadjusted)
