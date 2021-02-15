#install.packages("matlib")
library(matlib)

#Starting data points
A <- matrix(1:100, nrow=10)
B <- matrix(1:1000, nrow=10)

#Find determinant of A
det(A) #value is 0, inverse does not exist

#We would continue to the next step to find the inverse, however since the determinant was 0
#it is not going to return anything 

#Obtain inverse N-1
solve(A)

#Find determinant of B
det(B) #not a square matrix


