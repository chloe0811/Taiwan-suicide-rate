install.packages("gridExtra")
library(gridExtra)
library(readxl)
library(dplyr)
library(ggplot2)

sui_way1 <- read_excel("C:/Users/USER/Desktop/比賽/自殺方式.xlsx",sheet="固體")
sui_way1

head(sui_way1)
ggplot(sui_way1,aes(x=year, y=suicide_rate, group=性別, color=性別))+geom_line()+geom_point()
       +ggtitle("95~109年台灣以固體或液體物質自殺男女比")+xlab("年份")+ylab("占比率(%)")    
       +theme(plot.title = element_text(hjust = 0.5))+scale_x_continuous(limits=c(95,109),breaks=c(95:109))
                                                                                           

head(sui_way1)
ggplot(sui_way1, aes(x=year, y=number, group=性別, color=性別))+geom_line()+geom_point()
       +ggtitle("95~109年台灣以固體或液體物質自殺男女比")+xlab("年份")+ylab("人數")
       +theme(plot.title = element_text(hjust = 0.5))+scale_x_continuous(limits=c(95,109),breaks=c(95:109))

