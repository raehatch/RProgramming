#####################
#Original assignment#
#####################

assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)

myMean <- function(assignment2) {
  return(sum(assignment)/length(someData)) }

myMean(assignment2) #Error caused as the function is trying to call 'assignment' and 'someData' which does not exist

#########################
#Corrected mean function#
#########################

myData <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)

myMean <- function(meanData) {
  return(sum(meanData)/length(meanData)) }

myMean(myData)
