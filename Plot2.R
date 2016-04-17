# Plot2
png(filename ="plot2.png",width = 480, height = 480)
plot(r$DateTime,r$Global_active_power,xlab="",ylab="Global Active Power(kilowatts)",type = "l")
dev.off()


