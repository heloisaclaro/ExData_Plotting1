###Read and select Cases###
data_file <- c("./household_power_consumption.txt")
data <- read.table(data_file, sep = ";", header = T, na.strings = "?")
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
data <- na.omit(data) ## dealing with missing data
subset_data <-subset(data, (data$Date == "2007-02-01") | (data$Date == "2007-02-02")) ## Subsetted cases

###Third Plot###

plot(x=dataset$datetime, y=dataset$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(x=dataset$datetime, y=dataset$Sub_metering_2, col="red")
lines(x=dataset$datetime, y=dataset$Sub_metering_3, col="blue")
legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty=c(1,1), lwd=c(1,1))
dev.copy(png, file="plot3.png", width=480, height=480)
dev.off()