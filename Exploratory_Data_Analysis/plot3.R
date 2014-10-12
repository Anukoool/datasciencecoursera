library(dplyr)

#Create three data sets of Sub Meter1, 2, 3 add flags to identify records from each data set

Sub_M1 <- cbind(select(Pow_Con, Time= Date_Time, Meter = Sub_metering_1), M_flag = 1)

Sub_M2 <- cbind(select(Pow_Con, Time= Date_Time, Meter = Sub_metering_2), M_flag = 2)

Sub_M3 <- cbind(select(Pow_Con, Time= Date_Time, Meter = Sub_metering_3), M_flag = 3)

# Trying a different method using UNION ALL Create a data set with all Sub Meter readings in one single column, add a Variable to distinguish b/w Sub Meter 1, 2, 3

ESW <- rbind(Sub_M1, Sub_M2, Sub_M3)

rm(Sub_M1)
rm(Sub_M2)
rm(Sub_M3)

with(ESW, plot(Time, Meter, type = 'n', ylab= "Energy Sub Metering"))

with(subset(ESW, M_flag == 1), lines(Time, Meter, col = 'black'))

with(subset(ESW, M_flag == 2), lines(Time, Meter, col = 'red'))

with(subset(ESW, M_flag == 3), lines(Time, Meter, col = 'blue'))

legend("topright", col = c("black", "red", "blue"),lwd= 1, legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# Output a 480X480 PNG

dev.copy(png, file = "plot3.png")

dev.off()