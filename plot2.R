econsumption$NDate <- strptime(paste(as.character(econsumption$Date), econsumption$Time),format = "%Y-%m-%d %H:%M:%S")
plot(econsumption$NDate,econsumption$Global_active_power,type = 'l', ylab = "Global Active Power (kilowatts)",xlab = "")
dev.copy(png, file = "figure/plot2.png", width= 480, height= 480, units = "px") 
dev.off() 