#cleaning table
t<-read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings = "?", colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))
 tdate<-as.Date(t$Date,"%d%m%Y")
 tsubset<-subset(t,Date >= as.Date("2007-2-1") & Date <= as.Date("2007-2-2"))
 t <- t[complete.cases(t),]
  dateTime <- paste(t$Date, t$Time)
  dateTime <- setNames(dateTime, "DateTime")
  t <- cbind(dateTime, t)



hist(t$Global_active_power,main="Global Active Power",xlab="Global Active Power(kilowatts)",col="red")