# As one of the major principles in progamming is: Do Not Repeat Yourself, I wrote a R-Script file, 
# that reads in the dataframe once.

# Download the read_in_data.R file and keep it in the same directy as this file. This file will automatically use the 
# code, provided by read_in_data.R to load the datafrmae. 
source("read_in_data.R")

# assign vectors to use for the legend and color in plot3
color = c("black","red"," blue")
leg = c("Sub_metering_1","Sub_metering_2","Sub_metering_3")

## plot3
# open png device
png("plot3.png",width = 480, height = 480,units="px")

# initiate the plot
with(electric, plot(DateTime,Sub_metering_1,ylab="Energy sub metering",xlab="",main="", type="n"))
# use a for loop to add the 3 features Sub_metering_1, Sub_metering_2, Sub_metering_3 to the plot
for(n in seq_along(color)){
  with(electric, lines(DateTime,eval(parse(text=(leg[n]))),col=color[n])) 
}
# add the legend 
legend("topright",lty = 1, col=color,legend=leg)
# close the device
dev.off()
