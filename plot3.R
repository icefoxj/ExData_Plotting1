load("data.Rdata")

png("plot3.png",width=480,height=480,units="px")
with(data,plot(DateTime,Sub_metering_1,type="l",ylab="Energy sub metering",xlab=""))
with(data,lines(DateTime,Sub_metering_2,type="l",col="red"))
with(data,lines(DateTime,Sub_metering_3,type="l",col="blue"))
legend("topright",col=c("black","red","blue"),
       lwd=c(2,2,2),
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()

rm(data)