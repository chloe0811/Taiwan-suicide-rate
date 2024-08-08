install.packages("gridExtra")
library(gridExtra)
library(readxl)
library(ggplot2)

sui_way95_109 <- read_excel("C:/Users/USER/Desktop/比賽/自殺方式總比較.xlsx")
sui_way95_109

head(sui_way95_109)
ggplot(sui_way95_109, aes(x=year, y=suicide_rate, group=自殺方式, color=自殺方式))+geom_line()+geom_point()+ggtitle("95~109年台灣自殺方式死亡占率")+theme(plot.title = element_text(hjust = 0.5))+scale_x_continuous("年份",breaks = c(95:109))+scale_y_continuous("占比率(%)",breaks = c(0,5,10,15,20,25,30,35,40))

