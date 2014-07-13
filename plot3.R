# plot 3

if(.Platform$OS.type == 'unix') 
  {dev.copy(png, file = "plot3.png", bg = 'transparent')}
op <- par(bg = "transparent")
with(dataSub, plot(datetime, Sub_metering_1, 
                   xlab='', ylab='Energy sub metering', type = 'n'))
with(dataSub, lines(datetime, Sub_metering_1, col='black'))
with(dataSub, lines(datetime, Sub_metering_2, col ="red"))
with(dataSub, lines(datetime, Sub_metering_3, col ="blue"))
legend('topright', lty=c(1,1,1), lwd=c(0.75, 0.75, 0.75), col=c("black", "red", "blue"), 
  legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
par(op)
if(.Platform$OS.type == 'windows')
  {dev.copy(png, file = "plot3.png", bg = 'transparent')}
dev.off() 