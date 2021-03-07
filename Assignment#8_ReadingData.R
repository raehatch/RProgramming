setwd("~/B.S. (IFS)/2021_Spring/RProgramming/RCode")

install.packages("pryr")
install.packages("ISLR")
install.packages("plyr")
library(pryr)
library(ISLR)
library(plyr)


# Step 1: Import data and create grade averages by sex
data <- read.table("data/Assignment 6 Dataset-1.txt",header=TRUE,sep=",")

# Step 2: Create mean for Grade by Sex
dataAvgs <- ddply(data,"Sex",transform,Grade.Average=mean(Grade))

sex = data$Sex

# Step 3: print to file without quotes
write.table(dataAvgs,"Sorted_Average",sep=",",quote=FALSE)

# Step 4: Convert to dataframe with students who have a name that contains the letter i
i_students <- subset(data,grepl("i",data$Name,ignore.case = TRUE))

# Step 5: Write to CSV

# Choose File Location
write.csv(data,file.choose(),sep=",",quote=FALSE)
write.csv(dataAvgs,file.choose(),sep=",",quote=FALSE)
write.csv(i_students,file.choose(),sep=",",quote=FALSE)

# Use working directory
write.csv(data, "MyData.csv",quote=FALSE)
write.csv(dataAvgs, "MyDataAverages.csv",quote=FALSE)
write.csv(dataAvgs, "iStudents.csv",quote=FALSE)


