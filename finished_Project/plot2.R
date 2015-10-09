# As one of the major principles in progamming is: Do Not Repeat Yourself, I wrote a R-Script file, 
# that reads in the dataframe once.

# Download the read_in_data.R file and keep it in the same directy as this file. This file will automatically use the 
# code, provided by read_in_data.R to load the datafrmae. 
source("read_in_data.R")

## plot2
# open png device
png("plot2.png",width = 480, height = 480,units="px")

# create the plot
with(electric,plot(DateTime, Global_active_power,type="l",
     ylab="Global Active Power (kilowatts)",xlab="",main=""))
# close the png device 
dev.off()