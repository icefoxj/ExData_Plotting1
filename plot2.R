load("data.Rdata")

png("plot2.png",width=480,height=480,units="px")
with(data,plot(DateTime,Global_active_power,type="l",
               ylab="Global active power (kilowatts)",xlab=""))
dev.off()

rm(data)