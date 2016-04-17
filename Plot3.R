#Plot3
png(filename ="plot3.png",width = 480, height = 480)
plot(r$DateTime,r$Sub_metering_1,xlab="",ylab="Energy sub metering",type = "l")
points(r$DateTime,r$Sub_metering_2,col="red",type = "l")
points(r$DateTime,r$Sub_metering_3,col="blue",type = "l")
legend("topright",col=c("black","red","blue"),c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1)
dev.off()

