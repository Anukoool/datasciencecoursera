# Merge Date and Time in Pow_Con to create a new column called Timestamp

Pow_Con$Timestamp <- paste(Pow_Con$Date, Pow_Con$Time)

# Create another column converting Timestamp to UTC Date and Timestamp format

Pow_Con$Date_Time <- as.POSIXct(Pow_Con$Timestamp, tz ='UTC',"%d/%m/%Y %H:%M:%S")

# Create the plot, use type = "l" for lines in the plot

plot(Pow_Con[,11], Pow_Con[,3], type = "l", xlab = "", ylab = "Global Active Power (kilowatts)" )

# Output a 480X480 PNG

dev.copy(png, file = "plot2.png")

dev.off()