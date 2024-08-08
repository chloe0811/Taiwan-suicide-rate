install.packages("gridExtra")
library(gridExtra)
library(readxl)
library(dplyr)
library(ggplot2)

dataset <- read_excel("C:/Users/USER/Desktop/比賽/100-109自殺率統整.xlsx",sheet="失業率 15-64")
dataset

parameter <-  max(dataset$suicide_rate) / max(dataset$unemployment_rate)

sui_unemployment_15_64 <- ggplot( data = dataset, aes( x = year, y = suicide_rate ) )+geom_bar( stat = "identity", fill = '#10772C', width = 0.5 ) + ylab( "自殺率(每十萬人)") + geom_line( mapping = aes(y = unemployment_rate *parameter , x = year, group = 1 ) ,color = '#F4A11D', inherit.aes = FALSE, linetype="solid", size= 1.5 )+scale_y_continuous(sec.axis = sec_axis( ~./parameter, name = "失業率(%)" ) )+ggtitle("95~109年台灣15-64歲自殺率與失業率比較圖")+theme(plot.title = element_text(hjust = 0.5))+scale_x_continuous(breaks=c(95:109))+xlab("年份")                                                                                              
sui_unemployment_15_64

