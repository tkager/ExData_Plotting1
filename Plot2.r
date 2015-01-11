# Open File Device
dev.copy(png, "c:/temp/plot2.png")

### stringsAsFactors=F is necessary to preseve the numeric values (not have them converted to factor)
power_use <- subset(read.csv("c:\\temp\\household_power_consumption.txt", sep=";", stringsAsFactors=F), Date == "2/2/2007" | Date == "1/2/2007")

plot(strptime(paste(power_use$Date, power_use$Time), format = "%d/%m/%Y %H:%M:%S"), as.numeric(power_use$Global_active_power), ylab="Global Active Power (kilowatts)", xlab="", type="l" )

# Close File Device
dev.off()