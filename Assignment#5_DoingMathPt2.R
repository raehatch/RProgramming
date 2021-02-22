
#1. Consider A=matrix(c(2,0,1,3), ncol=2) and B=matrix(c(5,2,4,-1), ncol=2).
A = matrix(c(2, 0, 1, 3), ncol = 2)
B = matrix(c(5, 2,4, -1), ncol = 2)

#Print matrices
A
B

#a) Find A + B
A + B

#b) Find A - B
A - B

#Add diagonal 3
df <- diag(x = 3, nrow = 5)
df

#Add 1's to row 1
df[1, 2:5] <- 1
df

#Add 2's to column 1
df[2:5 ,1] <- 2
df

