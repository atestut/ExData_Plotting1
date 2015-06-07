setwd("~/R Programming/Exploratory Data Analysis/Assignment 1")

data <- read.table("household_power_consumption.txt", header = T, sep = ";")
data2 <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]


##convert date and time data to get days of week
dayofweek <- strptime(paste(data2$Date, data2$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

##create variables
globalActivePower <- as.numeric(data2$Global_active_power)
Sub_meetering_1 <- as.numeric(data2$Sub_metering_1)
Sub_meetering_2 <- as.numeric(data2$Sub_metering_2)
Sub_meetering_3 <- as.numeric(data2$Sub_metering_3)

##create plot3
png("plot3.png", width = 480, height = 480)
plot(dayofweek, Sub_meetering_1, type="l", ylab="Energy Submetering", xlab="")
lines(dayofweek, Sub_meetering_2, type="l", col="red")
lines(dayofweek, Sub_meetering_3, type="l", col="blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

dev.off()
