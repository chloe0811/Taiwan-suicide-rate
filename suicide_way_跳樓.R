install.packages("gridExtra")
library(gridExtra)
library(readxl)
library(ggplot2)

sui_way7 <- read_excel("C:/Users/USER/Desktop/比賽/自殺方式.xlsx",sheet="跳樓")
sui_way7

head(sui_way7)
ggplot(sui_way7, aes(x=year, y=suicide_rate, group=性別, color=性別))+geom_line()
+geom_point()+ggtitle("95~109年台灣由高處跳下自殺男女比")+xlab("年份")+ylab("占比率(%)")
+theme(plot.title = element_text(hjust = 0.5))+scale_x_continuous(limits=c(95,109),breaks=c(95:109))

head(sui_way7)
ggplot(sui_way7, aes(x=year, y=number,group=性別, color=性別))+geom_line()+geom_point()
       +ggtitle("95~109年台灣由高處跳下自殺男女比")+xlab("年份")+ylab("人數")
       +theme(plot.title = element_text(hjust = 0.5))+scale_x_continuous(limits=c(95,109),breaks=c(95:109))

