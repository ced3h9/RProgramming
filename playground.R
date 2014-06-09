data <- read.csv('C:\\Clients\\R\\datasource\\hw1_data.csv')

missingOz <- is.na(data[,"Ozone"])
missingOz

trueozone <- ozone[!is.na(ozone)]
good <- complete.cases(data)
good

gdata <- data [good, ]
gdata
workingData <- subset(data, Month == 6, select = c(Temp))
workingData
mean(workingData[,"Temp"])

gdata <- data [good, ]
workingData <- subset(gdata, Month == 5, select = c(Month, Ozone))
workingData
max(workingData[,"Ozone"])


workingData <- subset(gdata, Temp <= 90 & Ozone => 31, select = c(Ozone, Temp, Solar.R))
workingData
mean(workingData[,"Solar.R"])


trueozone
mean(trueozone)

subData <- data[, "Ozone">41 ]
subData

trueozone <- (missingOz==TRUE)
as.numeric(trueozone)
