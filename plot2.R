# plot 2

datetime <- strptime(paste(dataSub$Date, dataSub$Time), "%Y-%m-%d %H:%M:%S")
if(.Platform$OS.type == 'unix') 
  {dev.copy(png, file = "plot2.png", bg = 'transparent')}
op <- par(bg = "transparent")
with(dataSub, plot(datetime, Global_active_power, type='l', 
  xlab = '', ylab = 'Global Active Power (kilowatts)'))
par(op)
if(.Platform$OS.type == 'windows')
  {dev.copy(png, file = "plot2.png", bg = 'transparent')}
dev.off() 