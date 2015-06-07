setwd("~/R Programming/Exploratory Data Analysis/Assignment 1")

data <- read.table("household_power_consumption.txt", header = T, sep = ";")
data2 <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

##create variables
dayofweek <- strptime(paste(data2$Date, data2$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(data2$Global_active_power)
globalReactivePower <- as.numeric(data2$Global_reactive_power)
voltage <- as.numeric(data2$Voltage)
Sub_metering_1 <- as.numeric(data2$Sub_metering_1)
Sub_metering_2 <- as.numeric(data2$Sub_metering_2)
Sub_metering_3 <- as.numeric(data2$Sub_metering_3)


##create plot4
png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 

plot(dayofweek, globalActivePower, type="l", xlab="", ylab="Global Active Power", cex=0.2)

plot(dayofweek, voltage, type="l", xlab="datetime", ylab="Voltage")

plot(dayofweek, Sub_metering_1, type="l", ylab="Energy Submetering", xlab="")
lines(dayofweek, Sub_metering_2, type="l", col="red")
lines(dayofweek, Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

plot(dayofweek, globalReactivePower, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()
