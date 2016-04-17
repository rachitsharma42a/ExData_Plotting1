#Data import and preparation
q<-read.table("household_power_consumption.txt",header=T,sep=";",colClasses = c(rep("character", 2), rep("numeric", 7)),na = "?")
r<-subset(q,(Date=="1/2/2007" | Date=="2/2/2007"))
r$DateTime <- strptime(paste(Date, Time), "%d/%m/%Y %H:%M:%S")

#Plot1
png(filename ="plot1.png",width = 480, height = 480)
hist(r$Global_active_power,col="red",xlab="Global Active Power(kilowatts)",main="Global Active Power")
dev.off()




