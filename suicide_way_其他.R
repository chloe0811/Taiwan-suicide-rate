install.packages("gridExtra")
library(gridExtra)
library(readxl)
library(ggplot2)
sui_way8<-read_excel("C:/Users/USER/Desktop/比賽/自殺方式.xlsx",sheet="其他")
sui_way8

head(sui_way8)
ggplot(sui_way8, aes(x=year, y=suicide_rate, group=性別, color=性別))+geom_line()+geom_point()+ggtitle("95~109年台灣其他及未明示之方式自殺男女比")+theme(plot.title = element_text(hjust = 0.5))+scale_x_continuous(limits=c(95,109),breaks=c(95:109))+xlab("年份")+ylab("占比率(%)")

head(sui_way8)
ggplot(sui_way8, aes(x=year, y=number, group=性別, color=性別))+geom_line()+geom_point()+ggtitle("95~109年台灣其他及未明示之方式自殺男女比")+theme(plot.title = element_text(hjust = 0.5))+scale_x_continuous(limits=c(95,109),breaks=c(95:109))+xlab("年份")+ylab("人數")

