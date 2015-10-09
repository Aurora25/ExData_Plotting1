## Reading in the data from the file household_power_consumtion.txt
# Download the data from: https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip 
# It is required, that read_in_data.R (as well as the plot#.R files) are in the directory in which the downloaded datafile was being unzipped

# This file is a necessity to have with the files:
# plot1.R
# plot2.R
# plot3.R
# plot4.R
# The files above will otherwise not work.

# Read in the necessary lines with the dates 1/2/2007 and 2/2/2007
electric <- read.table("exdata-data-household_power_consumption/household_power_consumption.txt",header=FALSE,sep=';',skip=66637,na.strings=c("?"),nrows=2880)

# Read in the heder for the dataframe
header <- read.table("exdata-data-household_power_consumption/household_power_consumption.txt",header=FALSE,sep=';',nrows=1)
header <- unname(unlist(header))

# Create Dataframe from the header and data
names(electric) <- header


# Add a column, that contians a datetime object, made up of the Date and Time columns. 
# Remove the Date- and Time-only columns, as they aren't needed anymore.
electric$DateTime <- as.POSIXct(paste(electric$Date, electric$Time), format="%d/%m/%Y %H:%M:%S")
electric$Date <- NULL
electric$Time <- NULL

