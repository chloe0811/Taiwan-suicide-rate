install.packages("gridExtra")
library(gridExtra)
library(readxl)
library(dplyr)
library(ggplot2)

dataset <- read_excel("C:/Users/USER/Desktop/比賽/100-109自殺率統整.xlsx",sheet="臨床心理師")
dataset

parameter <-  max(dataset$doctor) / max(dataset$number)

clinical_psychologist <- ggplot( data = dataset, aes( x = year, y = number ) )+geom_bar( stat="identity", fill = '#10772C', width = 0.5 ) + ylab( "自殺人數") + geom_line( mapping = aes(y = doctor/(1.3*parameter)  , x = year, group = 1 ) , color = '#F4A11D', inherit.aes = FALSE, linetype="solid", size= 1.5 )+scale_y_continuous(sec.axis = sec_axis( ~.*1.3*parameter, name = "臨床心理師人數" ) )+ggtitle("95~109年台灣自殺人數與臨床心理師人數比較圖")+theme(plot.title = element_text(hjust = 0.5))+scale_x_continuous(breaks=c(95:109))+xlab("年份")                                                                                              
clinical_psychologist

