###Read and select Cases###
data_file <- c("./household_power_consumption.txt")
data <- read.table(data_file, sep = ";", header = T, na.strings = "?")
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
data <- na.omit(data) ## dealing with missing data
subset_data <-subset(data, (data$Date == "2007-02-01") | (data$Date == "2007-02-02")) ## Subsetted cases

###Second Plot###

plot(x=dataset$datetime, y=dataset$Global_active_power, type="l", xlab=" ", ylab="Global Active Power (kilowatts)")
dev.copy(png, file="plot2.png", width=480, height=480)
dev.off()
cat("plot1.png can be fund here:", getwd())