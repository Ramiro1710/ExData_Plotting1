source("getData.R")
getData()
x <- strptime(paste(dat$Date,dat$Time), format="%Y-%m-%d  %H:%M:%S")

png("plot2.png", width = 480 , height = 480)

plot(x, as.numeric(dat$Global_active_power),type = "l",xlab="",ylab="Global Active Power (kilowatts)")

dev.off()