getwd()
setwd("D:\\R\\AirQualityUCI")]
y<-read.csv("yeast.csv",na.strings = c(""," ",NA))
y

###########Normality
attach(y)
qqnorm(alm)
qqline(alm)

##Homogeneity of Variances

bartlett.test(y~vac, data=y)
#####outlier
library(mvoutlier)
outliers <- 
  aq.plot(y[c("vac","alm","pox","nuc")])