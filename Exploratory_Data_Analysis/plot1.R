# R Script for Creating a Histogram Plot

# Read the file into a variable called PowerConsumption, convert '?' to NAs and assign classes to all columns, assign date and time as characters to avoid bad conversions

PowerConsumption <- read.table(file = "./power_consumption/household_power_consumption.txt", sep = ";", header=TRUE, na.strings = '?', colClasses =c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))

# Read the data for 01-Feb-07 and 02-Feb-07 into a variable Pow_Con

Pow_Con <- subset(PowerConsumption, as.Date(Date, format='%d/%m/%Y')== '2007-02-01' | as.Date(Date, format='%d/%m/%Y')== '2007-02-02')

# Remove the data set not required anymore

rm(PowerConsumption)

# Create the Histogram, assign appropriate colour and labels

with(Pow_Con, hist(Pow_Con[,3], col = "red", main = paste("Global Active Power"), xlab = "Global Active Power (kilowatts)"))

# Output a 480X480 PNG

dev.copy(png, file = "plot1.png")

dev.off()