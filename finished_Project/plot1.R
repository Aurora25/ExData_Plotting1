# As one of the major principles in progamming is: Do Not Repeat Yourself, I wrote a R-Script file, 
# that reads in the dataframe once.

# Download the read_in_data.R file and keep it in the same directy as this file. This file will automatically use the 
# code, provided by read_in_data.R to load the datafrmae. 
source("read_in_data.R")

## plot1
# open png device
png("plot1.png",width = 480, height = 480)
# create the plot 
hist(electric$Global_active_power,main="Global Active Power",xlab="Global Active Power (kilowatts)",ylab="Frequency",col="red")
# close the png device
dev.off()