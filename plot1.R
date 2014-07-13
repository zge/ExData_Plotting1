if(.Platform$OS.type == 'unix') 
  {dev.copy(png, file = "plot1.png", bg = 'transparent')}
op <- par(bg = "transparent")
with(dataSub, hist(Global_active_power, col = "red", main = 'Global Active Power', 
  xlab = 'Global Active Power (kilowatts)', ylab = 'Frequency'))
par(op)
if(.Platform$OS.type == 'windows')
  {dev.copy(png, file = "plot1.png", bg = 'transparent')}
dev.off() 