par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))
with(t,{
    plot(Global_active_power~dateTime,type="l",xlab="",ylab="Global Active Power(kilowatts)")
    plot(Voltage~dateTime,type="l",xlab="dateime",ylab="Voltage")
    plot(Sub_metering_1,dateTime,type="l",xlab="",ylab="Energy sub metering")
    lines(Sub_metering_2~dateTime,col='Red')
   lines(Sub_metering_3~dateTime,col='Blue')
   legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, bty="n",
          legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
    plot(Global_reactive_power~dateTime,type="l",xlab="dateime",ylab="Global_reactive_power")
  })