getwd()  #stand get your working directory
setwd("C:/Users/PC/Downloads") #chage the working directory where your dataset you need #you can do it as weel from R/File/change dir #R not Rstudio I said!
list.files() #to see the datasets you'd work with
#to read the dataset use [read.csv] if your files are .csv foramt
ny = read.csv('new-york-city.csv')
wash = read.csv('washington.csv')
chi = read.csv('chicago.csv')
