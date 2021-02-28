

mycars <- mtcars

isS4(mycars)
mode(mycars)
typeof(mycars)
is.character(mycars)
is.vector(mycars)


print(mycars)
summary(mycars)

mycars$mpg
mycars@mpg #errors out because it is not an S4 object

#############################

#S3

#Creating a fake record in S3
myS3cars <- list(
  name = "Jeep",
  mpg = 30,
  wt = 2.5
)
class(myS3cars) <- "car"

mode(myS3cars)
class(myS3cars)
attributes(myS3cars)

myS3cars$name

#S4

#Lets make a new fake record in S4

setClass("cars", 
         representation(
           name = "character",
           mpg = "numeric",
           wt = "numeric"
         ))

myS4cars <- new(
  "cars",
  name = "Jeep",
  mpg = 30,
  wt = 2.5
)

myS4cars

mode(myS4cars)
mode(slot(myS4cars,"mpg")) #check individual object

myS4cars@name

isS4(myS4cars)


###############
# Final check #
###############

#install.packages("pryr")
library(pryr)

otype(mycars)
otype(myS4cars)








