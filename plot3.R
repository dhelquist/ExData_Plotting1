##Load the File:
data <- read.csv("subset_household_power_consumption.txt", sep=";")
data$DateTime <- strptime(paste(data$Date, data$Time), format='%d/%m/%Y %H:%M:%S')

##Open the picture file to save
png(file="plot3.png", width=480, height=480)

##Plot the graph:
plot(data$DateTime, as.numeric(as.character(data$Sub_metering_1)), 
     type = "l", col = "black", ylab="Energy sub metering", xlab="")
lines(data$DateTime, as.numeric(as.character(data$Sub_metering_2)), 
     type = "l", col = "red")
lines(data$DateTime, as.numeric(as.character(data$Sub_metering_3)), 
      type = "l", col = "blue")
legend("topright", col=c("black", "red", "blue"), lty="solid",
       legend=c("sub_metering_1","sub_metering_2","sub_metering_3"))

##Close the file:
dev.off()