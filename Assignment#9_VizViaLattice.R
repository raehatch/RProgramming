# data source: https://vincentarelbundock.github.io/Rdatasets/datasets.html
setwd("~/B.S. (IFS)/2021_Spring/RProgramming/RCode/Data")

# libraries
library(lattice)
library(ggplot2)
library(reshape2)

# data import and cleansing
df <- read.csv("USConsump1993.csv")
df$Year <- as.Date(ISOdate(df$Year, 1, 1)) # Convert year to date format
names(df) <- tolower(names(df)) # make headers lowercase
dfMelt <- melt(df,id.vars="year") #melt data

#########
# Plots #
#########

# base r
colors=c("red","blue")
plot(x=dfMelt$year,y=dfMelt$value,
     col=colors[dfMelt$variable],
     type="l",main="Income and Expenditures by Year (Base R)")

# ggplot line
ggplot(dfMelt,aes(x=year,y=value)) + 
  geom_line(aes(color=variable)) +
  ggtitle("Income and Expenditures by Year (ggplot)")

# lattice line
xyplot(income + expenditure ~ year,
       data=df,
       col=c("#cc0000", "#0073e6"),
       type=c("l","g"),
       main="Income and Expenditures by Year (Lattice)")


###############
# More ggplot #
###############

# Scatter plot in ggplot

ggplot(dfMelt,aes(x=year,y=value,color=variable)) + 
  geom_point() +
  ggtitle("Income and Expenditures by Year")

# Bar plot in ggplot

ggplot(dfMelt,aes(x=year,y=value,fill=variable)) + 
  geom_col() +
  ggtitle("Income and Expenditures by Year")
