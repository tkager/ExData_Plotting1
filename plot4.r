# Open File Device
dev.copy(png, "c:/temp/plot4.png")

### stringsAsFactors=F is necessary to preseve the numeric values (not have them converted to factor)
power_use <- subset(read.csv("c:\\temp\\household_power_consumption.txt", sep=";", stringsAsFactors=F), Date == "2/2/2007" | Date == "1/2/2007")

par(mfrow = c(2,2))
plot(strptime(paste(power_use$Date, power_use$Time), format = "%d/%m/%Y %H:%M:%S"), as.numeric(power_use$Global_active_power), type="l", ylab="Global Active Power", xlab="")
plot(strptime(paste(power_use$Date, power_use$Time), format = "%d/%m/%Y %H:%M:%S"), as.numeric(power_use$Voltage), type="l", ylab="Voltage", xlab="")
plot(strptime(paste(power_use$Date, power_use$Time), format = "%d/%m/%Y %H:%M:%S"), as.numeric(power_use$Sub_metering_1), type="l", ylab="Energy sub metering", xlab="")
points(strptime(paste(power_use$Date, power_use$Time), format = "%d/%m/%Y %H:%M:%S"), as.numeric(power_use$Sub_metering_2), col = "red", type="l")
points(strptime(paste(power_use$Date, power_use$Time), format = "%d/%m/%Y %H:%M:%S"), as.numeric(power_use$Sub_metering_3), col = "blue", type="l")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, col=c("black", "red", "blue"), seg.len=3, bty="n")
plot(strptime(paste(power_use$Date, power_use$Time), format = "%d/%m/%Y %H:%M:%S"), as.numeric(power_use$Global_reactive_power), type="l", ylab="Global_reactive_power", xlab="datetime")

# Close File Device
dev.off()
