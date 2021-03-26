
# Create test dataset
testData <- matrix(c(1,2,3,4,5),nrow=5,ncol=5)

#------------------------------------------

#Original
tukey_multiple <- function(x) {
  outliers <- array(TRUE,dim=dim(x))
  for (j in 1:ncol(x))
  {
    outliers[,j] <- outliers[,j] && tukey.outlier(x[,j])
  }
  outlier.vec <- vector(length=nrow(x))
  for (i in 1:nrow(x))
  { outlier.vec[i] <- all(outliers[i,]) } return(outlier.vec) }


#------------------------------------------
# move return function to new line
#------------------------------------------

# debugged
tukey_multiple <- function(x) {
  
  outliers <- array(TRUE,dim=dim(x))
  
  for (j in 1:ncol(x))
  {
    outliers[,j] <- outliers[,j] && tukey.outlier(x[,j])
  }
  outlier.vec <- vector(length=nrow(x))
  for (i in 1:nrow(x))
  { 
    outlier.vec[i] <- all(outliers[i,]) 
  } 
  return(outlier.vec) } # return function was being included in for loop

tukey_multiple_fixed(testData)


#------------------------------------------

# Dependent function of tukey_outlier
quartiles <- function(x) {
  q1<-quantile(x,0.25,names=FALSE)
  q3<-quantile(x,0.75,names=FALSE)
  quartiles <- c(first=q1,third=q3,iqr=q3-q1)
  return(quartiles)
}

# Dependent function of tukey_multiple
tukey.outlier <- function(x) {
  quartiles <- quartiles(x)
  lower.limit <- quartiles[1]-1.5*quartiles[3]
  upper.limit <- quartiles[2]+1.5*quartiles[3]
  outliers <- ((x < lower.limit) | (x > upper.limit))
  return(outliers)
}


# fully debugged
tukey_multiple <- function(x) {
  
  outliers <- array(TRUE,dim=dim(x))
  
  for (j in 1:ncol(x))
  {
    outliers[,j] <- outliers[,j] && tukey.outlier(x[,j])
  }
  outlier.vec <- vector(length=nrow(x))
  for (i in 1:nrow(x))
  { 
    outlier.vec[i] <- all(outliers[i,]) 
  } 
  return(outlier.vec) } # return function was being included in for loop

tukey_multiple_fixed(testData)






