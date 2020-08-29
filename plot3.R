source("getData.R")
getData()
x <- strptime(paste(dat$Date,dat$Time), format="%Y-%m-%d  %H:%M:%S")

png("plot3.png", width = 480 , height = 480)

plot(x, as.numeric(dat$Sub_metering_1),type = "l",xlab="",ylab="Energy sub metering")
lines(x,as.numeric(dat$Sub_metering_2), col="red")
lines(x,as.numeric(dat$Sub_metering_3), col="blue")
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lwd=c(1,1), col=c("black","red","blue"))

dev.off()