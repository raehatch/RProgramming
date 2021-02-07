#install.packages("reshape")
library(reshape)
library(ggplot2)

#Generate individual data points
freq <- c(0.6,0.3,0.4,0.4,0.2,0.6,0.3,0.4,0.9,0.2)
bp <- c(103,87,32,42,59,109,78,205,135,176)
first <- c(1,1,1,1,0,0,0,0,NA,1)
second <- c(0,0,1,1,0,0,1,1,1,1)
final <- c(0,1,0,1,0,1,0,1,1,1)

#Combine into data frame
df <- cbind(freq,bp,first,second,final)

#Remove NA's
df <- as.data.frame(na.omit(df))

#Melt data for visualization
dfNew <- melt(df,id ="bp",measure.vars = c('first','second','final'))

#Add categorical for high/low for viz
dfNew$level <- ifelse(dfNew$value==1, "High","Low")

#A: Create a boxplot
ggplot(dfNew,aes(x=variable,y=bp,fill=level)) + 
  geom_boxplot() +
  ylab("Blood Pressure") +
  xlab("Asessment Visit") +
  ggtitle("Blood Presure by Visit")
  
#B: Create a histogram
hist(df$bp,main="Blood Pressure Histogram")


