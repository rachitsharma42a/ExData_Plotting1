#Data import and Preparation
q<-read.table("household_power_consumption.txt",header=T,sep=";",colClasses = c(rep("character", 2), rep("numeric", 7)),na = "?")
r<-subset(q,(Date=="1/2/2007" | Date=="2/2/2007"))
r$DateTime <- strptime(paste(Date, Time), "%d/%m/%Y %H:%M:%S")

