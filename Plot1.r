# Open File Device
dev.copy(png, "c:/temp/plot1.png")

### stringsAsFactors=F is necessary to preseve the numeric values (not have them converted to factor)
power_use <- subset(read.csv("c:\\temp\\household_power_consumption.txt", sep=";", stringsAsFactors=F), Date == "2/2/2007" | Date == "1/2/2007")

hist(as.numeric(power_use$Global_active_power), xlab="Global Active Power (kilowatts)", ylab="Frequency", main="Global Active Power", col="red")

# Close File Device
dev.off()


