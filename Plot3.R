#Data import and preparation
q<-read.table("household_power_consumption.txt",header=T,sep=";",colClasses = c(rep("character", 2), rep("numeric", 7)),na = "?")
r<-subset(q,(Date=="1/2/2007" | Date=="2/2/2007"))
r$DateTime <- strptime(paste(Date, Time), "%d/%m/%Y %H:%M:%S")

#Plot3
png(filename ="plot3.png",width = 480, height = 480)
plot(r$DateTime,r$Sub_metering_1,xlab="",ylab="Energy sub metering",type = "l")
points(r$DateTime,r$Sub_metering_2,col="red",type = "l")
points(r$DateTime,r$Sub_metering_3,col="blue",type = "l")
legend("topright",col=c("black","red","blue"),c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1)
dev.off()

