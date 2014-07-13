if(.Platform$OS.type == 'unix') {
  dev.copy(png, file = "plot4.png", bg = 'transparent')}
op <- par(bg = "transparent")
par(mfrow=c(2, 2))
with(dataSub, plot(datetime, Global_active_power, type='l', 
                   xlab = '', ylab = 'Global Active Power (kilowatts)'))
with(dataSub, plot(datetime, Voltage, type='l', 
                   xlab='datetime', ylab='Voltage'))
with(dataSub, plot(datetime, Sub_metering_1, 
                   xlab='', ylab='Energy sub metering', type = 'n'))
with(dataSub, lines(datetime, Sub_metering_1, col='black'))
with(dataSub, lines(datetime, Sub_metering_2, col ="red"))
with(dataSub, lines(datetime, Sub_metering_3, col ="blue"))
legend('topright', lty=c(1, 1, 1), lwd=c(1, 1, 1), 
       bty='n', col=c("black", "red", "blue"), cex = 0.75,  
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
with(dataSub, plot(datetime, Global_reactive_power, type='l', 
                   xlab='datetime', ylab='Global_reactive_power'))
par(mfrow=c(1,1))
par(op)
if(.Platform$OS.type == 'windows') {
  dev.copy(png, file = "plot4.png", bg = 'transparent')}
dev.off() 