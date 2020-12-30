load("data.Rdata")

png("plot4.png",width=480,height=480,units="px")

par(mfrow=c(2,2))

with(data,plot(DateTime,Global_active_power,type="l",
               ylab="Global active power (kilowatts)",xlab=""))

with(data,plot(DateTime,Voltage,type="l",
               ylab="Voltage",xlab="datetime"))

with(data,plot(DateTime,Sub_metering_1,type="l",ylab="Energy sub metering",xlab=""))
with(data,lines(DateTime,Sub_metering_2,type="l",col="red"))
with(data,lines(DateTime,Sub_metering_3,type="l",col="blue"))
legend("topright",col=c("black","red","blue"),
       lwd=c(2,2,2),
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

with(data,plot(DateTime,Global_reactive_power,type="l",
               ylab="Global_reactive_power",xlab="datetime"))

dev.off()

rm(data)