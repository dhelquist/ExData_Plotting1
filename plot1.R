##Load Data:
data <- read.csv("subset_household_power_consumption.txt", sep=";")
data$DateTime <- strptime(paste(data$Date, data$Time), format='%d/%m/%Y %H:%M:%S')

##Plot Graph:
hist(data$Global_active_power, col = "red", main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency")

##Save picture to file:
dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()