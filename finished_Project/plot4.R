# As one of the major principles in progamming is To Not Repeat Yourself, I wrote an additional R-Script file
# which reads in the dataframe once.

# Download the read_in_data.R file and keep it in the same directy as this file. This file will automatically use the 
# code, provided by read_in_data.R to load the datafrmae. 
source("read_in_data.R")


# assign vectors, which will be used in the third plot
color = c("black","red"," blue")
leg = c("Sub_metering_1","Sub_metering_2","Sub_metering_3")

## plot4
png("plot4.png",width = 480, height = 480,units="px")
# set the number of subplots to 4 (2x2)
par(mfrow=c(2,2))

## subplot 1
with(electric,(plot(DateTime,Global_active_power,type="l",
     ylab="Global Active Power",xlab="",main="")))

## subplot 2
with(electric,(plot(DateTime,Voltage,type="l",xlab="datetime",ylab="Voltage")))

## subplot 3
with(electric,(plot(DateTime,Sub_metering_1,ylab="Energy sub metering",xlab="",main="", type="n")))
for(n in seq_along(color)){
  with(electric, lines(DateTime,eval(parse(text=(leg[n]))),col=color[n])) 
}
legend("topright",lty = 1, col=color,legend=leg,bty="n")

## subplot 4
with(electric,(plot(DateTime,Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power")))

# Turn png device off
dev.off()
