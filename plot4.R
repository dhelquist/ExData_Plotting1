##Load the File:
data <- read.csv("subset_household_power_consumption.txt", sep=";")
data$DateTime <- strptime(paste(data$Date, data$Time), format='%d/%m/%Y %H:%M:%S')

##Open the picture file to save
png(file="plot4.png", width=480, height=480)

##Plot the graphs:
par(mfrow=c(2,2))
##Plot 1:
plot(data$DateTime, data$Global_active_power, type="l", xlab="", 
     ylab="Global Active Power")
##Plot 2:
plot(data$DateTime, data$Voltage, type="l", xlab="datetime", ylab="Voltage")
##Plot 3:
plot(data$DateTime, as.numeric(as.character(data$Sub_metering_1)), 
     type = "l", col = "black", ylab="Energy sub metering", xlab="")
lines(data$DateTime, as.numeric(as.character(data$Sub_metering_2)), 
      type = "l", col = "red")
lines(data$DateTime, as.numeric(as.character(data$Sub_metering_3)), 
      type = "l", col = "blue")
legend("topright", col=c("black", "red", "blue"), bty="n", lty="solid",
       legend=c("sub_metering_1","sub_metering_2","sub_metering_3"))
##Plot 4:
plot(data$DateTime, data$Global_reactive_power, type="l", xlab="datetime", 
     ylab="Global_reactive_power")

##Close the file:
dev.off()