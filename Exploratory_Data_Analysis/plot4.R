

#Adjusting the screen to fit four plots
par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))


with(Pow_Con, 
        {
        
        #First plot active power vs time        
        plot(Global_active_power~Date_Time, type="l", ylab="Global Active Power (kilowatts)", xlab="")
        
        #Second plot voltage vs time         
        plot(Voltage~Date_Time, type="l", ylab="Voltage (volt)", xlab="")
        
        #Third plot Sub Meterings vs time    
        plot(Sub_metering_1~Date_Time, type="l", ylab="Global Active Power (kilowatts)", xlab="")
        lines(Sub_metering_2~Date_Time,col='Red')
        lines(Sub_metering_3~Date_Time,col='Blue')
        
        #not able to adjust the legend it the subplot. Its not reducing in proportion
    
        legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, bty="n",legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
        
        # Fourth plot Reactive power vs time
        plot(Global_reactive_power~Date_Time, type="l", ylab="Global Rective Power (kilowatts)",xlab="")
        }
    )

rm(Pow_Con)

# Output a 480X480 PNG

dev.copy(png, file = "plot4.png")

dev.off()