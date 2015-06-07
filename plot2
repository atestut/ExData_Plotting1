setwd("~/R Programming/Exploratory Data Analysis/Assignment 1")

data <- read.table("household_power_consumption.txt", header = T, sep = ";")
data2 <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

##convert date and time data to get days of week
dayofweek <-strptime(paste(data2$Date, data2$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
globalActivePower <- as.numeric(data2$Global_active_power)

##Plot2
png("plot2.png", width=480, height=480)
plot(dayofweek, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")


dev.off()
