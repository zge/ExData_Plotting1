# Project 1: making plots
#
# Zhenhao (Roger) Ge, 2014-07-12

# set up working directory
path_rel <- "Dropbox/Study/PRML/course/Coursera_DataScience4/scripts"
path <- paste('/home/', Sys.info()[["user"]], '/', path_rel, sep = "")
if(.Platform$OS.type == 'windows')
  path <- paste('D:/', path_rel, sep = "")

# update working directory if necessary 
path_old <- getwd()
if(path_old != path) {
  setwd(path)
  print(paste('dir update: ', path_old, ' -> ', path, sep = ""))
}
rm(path_rel, path_old)

# set file name
fileName <- "household_power_consumption.txt"
filePathName <- paste0('../data/', fileName)

# read in data
initial <- read.table(filePathName, header = T, , sep = ";", nrows = 10)
classes <- sapply(initial, class)
initial <- read.table(filePathName, header = T, , sep = ";", nrows = 10)
data <- read.table(paste0('../data/', fileName), header = T, , sep = ";", na.strings = "?", colClasses = classes)

# get the sub data from 2007-02-01to 2007-02-02
data$Date <- as.Date(data$Date, "%d/%m/%Y")
data$Time <- format(strptime(data$Time, "%H:%M:%S"), "%H:%M:%S")
dataSub <- subset(data , Date >= "2007-02-01" & Date <= "2007-02-02")

# remove the whole data and only keep the sub-data to save space
rm(data)

# get new variable used in the plot
datetime <- strptime(paste(dataSub$Date, dataSub$Time), "%Y-%m-%d %H:%M:%S")

# plot 1
source('plot1.R')

# plot 2
source('plot2.R')

# plot 3
source('plot3.R')
       
# plot 4
source('plot4.R')

