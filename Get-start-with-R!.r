getwd()  #stand get your working directory
setwd("C:/Users/PC/Downloads") #chage the working directory where your dataset you need #you can do it as weel from R/File/change dir #R not Rstudio I said!
list.files() #to see the datasets you'd work with
#to read the dataset use [read.csv] if your files are .csv foramt
ny = read.csv('new-york-city.csv')
wash = read.csv('washington.csv')
chi = read.csv('chicago.csv')

#now! let's say you've date/date-time variable to deal with
#first thing to do is installing lubridate.package!
install.packages("lubridate") 
#to start work with..
library(lubridate)

#let's say your variable Start.Time in the three datasets is a date-time, to use @lubridate function 
#you should first ajust the format of your date-time varibale
#you can find more Documentation for package ‘lubridate’ in R files (^_^)

ny$Start.Time <-lyb as.POSIXct(ny$Start.Time, " %Y-%m-%d %H:%M:%S")
wash$Start.Time <- as.POSIXct(wash$Start.Time, " %Y-%m-%d %H:%M:%S")
chi$Start.Time <- as.POSIXct(chi$Start.Time, " %Y-%m-%d %H:%M:%S")
#that's all! now you can handel date-time easly with lubridate 
