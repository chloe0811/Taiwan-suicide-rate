install.packages("gridExtra")
library(gridExtra)
library(readxl)
library(ggplot2)

sui_way4<-read_excel("C:/Users/USER/Desktop/比賽/自殺方式.xlsx",sheet="溺水")
sui_way4

head(sui_way4)
ggplot(sui_way4, aes(x=year, y=suicide_rate, group=性別, color=性別))+geom_line()+geom_point()+ggtitle("95~109年台灣溺水、淹死自殺男女比")+theme(plot.title = element_text(hjust = 0.5))+scale_x_continuous(limits=c(95,109),breaks=c(95:109))+xlab("年份")+ylab("占比率(%)")

head(sui_way4)
ggplot(sui_way4, aes(x=year, y=number, group=性別, color=性別))+geom_line()+geom_point()+ggtitle("95~109年台灣溺水、淹死自殺男女比")+theme(plot.title = element_text(hjust = 0.5))+scale_x_continuous(limits=c(95,109),breaks=c(95:109))+xlab("年份")+ylab("人數")

