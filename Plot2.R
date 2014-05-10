##Load File:
data <- read.csv("subset_household_power_consumption.txt", sep=";")
data$DateTime <- strptime(paste(data$Date, data$Time), format='%d/%m/%Y %H:%M:%S')

##Plot Graph:
plot(data$DateTime, data$Global_active_power, type="l", xlab="", 
     ylab="Global Active Power (kilowatts)")

#Save picture to file:
dev.copy(png, file="plot2.png", width=480, height=480)
dev.off()