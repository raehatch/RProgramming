#Initial Data
Name <- c('Jeb','Donald','Ted','Marco','Carly','Hillary','Bernie')
ABC <- c(4, 62, 51, 21, 2, 14, 15)
CBS <- c(12, 7, 43, 19, 1, 21, 19) 


#As data frame
df <- data.frame(Name,ABC,CBS)
str(df)

#As matrix
data <- cbind(Name,ABC,CBS)
str(data)



