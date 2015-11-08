plot(econsumption$NDate,econsumption$Sub_metering_1, ylab = "Energy sub meterin", type = 'l',xlab = "")
points(econsumption$NDate,econsumption$Sub_metering_2, col="red", type = 'l')
points(econsumption$NDate,econsumption$Sub_metering_3, col="blue", type = 'l')
legend("topright", pch = '_', col = c("black","blue", "red"),
       legend = c("Sub_metering_2", "Sub_metering_2","Sub_metering_3"))
dev.copy(png, file = "figure/plot3.png", width= 480, height= 480, units = "px") 
dev.off() 