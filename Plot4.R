#Data import and preparation
q<-read.table("household_power_consumption.txt",header=T,sep=";",colClasses = c(rep("character", 2), rep("numeric", 7)),na = "?")
r<-subset(q,(Date=="1/2/2007" | Date=="2/2/2007"))
r$DateTime <- strptime(paste(Date, Time), "%d/%m/%Y %H:%M:%S")

#plot4
par(mfrow=c(2,2))
png(filename ="plot4.png",width = 480, height = 480)

#Top-Left
plot(r$DateTime,r$Global_active_power,xlab="",ylab="Global Active Power(kilowatts)",type = "l")

#Top-Right
plot(r$DateTime,r$Voltage,xlab="DateTime",ylab="Voltage",type = "l")

#Bottom-Left
plot(r$DateTime,r$Sub_metering_1,xlab="",ylab="Energy sub metering",type = "l")
points(r$DateTime,r$Sub_metering_2,col="red",type = "l")
points(r$DateTime,r$Sub_metering_3,col="blue",type = "l")
legend("topright",col=c("black","red","blue"),c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1)

#Bottom-Right
plot(r$DateTime,r$Global_reactive_power,ylab="Global Reactive Power(kilowatts)",type = "l",xlab = "datetime")
dev.off()
