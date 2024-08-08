install.packages("gridExtra")
library(gridExtra)
library(readxl)
library(dplyr)
library(ggplot2)

sui_gender <- read_excel("C:/Users/USER/Desktop/比賽/性別自殺.xlsx")
sui_gender

head(sui_gender)
ggplot(sui_gender, aes(x=year, y=suicide_rate, group=性別, color=性別))+geom_line()+geom_point()
       +ggtitle("95~109年台灣自殺男女比")+xlab("年份")+ylab("自殺率(每十萬人)")
       +theme(plot.title = element_text(hjust = 0.5))+scale_x_continuous(limits=c(95,109),breaks=c(95:109))

head(sui_gender)
ggplot(sui_gender, aes(x=year, y=number, group=性別, color=性別))+geom_line()+geom_point()
       +ggtitle("95~109年台灣自殺男女比")+xlab("年份")+ylab("人數")
       +theme(plot.title = element_text(hjust = 0.5))+scale_x_continuous(limits=c(95,109),breaks=c(95:109))

