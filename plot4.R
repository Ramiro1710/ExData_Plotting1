source("getData.R")
getData()
x <- strptime(paste(dat$Date,dat$Time), format="%Y-%m-%d  %H:%M:%S")

png("plot4.png", width = 480 , height = 480)

par(mfrow=c(2,2))

plot(x, as.numeric(dat$Global_active_power),type = "l",xlab="",ylab="Global Active Power (kilowatts)")

plot(x, as.numeric(dat$Voltage),type = "l",xlab="datetime",ylab="Voltage")

plot(x, as.numeric(dat$Sub_metering_1),type = "l",xlab="",ylab="Energy sub metering")
lines(x,as.numeric(dat$Sub_metering_2), col="red")
lines(x,as.numeric(dat$Sub_metering_3), col="blue")
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lwd=c(1,1), col=c("black","red","blue"), bty = "n")

plot(x, as.numeric(dat$Global_reactive_power),type = "l",xlab="datetime",ylab="Global_rective_power")

dev.off()