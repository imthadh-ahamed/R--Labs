#Check working directly
getwd()

#Change and check working directly
setwd("C:\\Users\\HP\\OneDrive\\Desktop\\New folder\\R")
#OR
setwd("C:/Users/HP/OneDrive/Desktop/New folder/R")
getwd()

#help
?solve
help("data.frame")

#Install packages
install.packages("ggplot2")

#Scale Operators
#add
2+8

#subtraction
10-8

#Multiplication
10*3

#Division
10/3

#Exponentiation
2**5
2^5

#Modulas
5%%2

#Integer division
10%/%7


#Logical Operators
x = 5
y = -4

#Less than
x < y

#Less than or equal
x <= y

#Greater than
x > y

#Greater than or equal
x >= y

#Exactly equal to
x == y

#Not equal to
x != y

#AND
isTRUE(x < 6 & y > 0)

#OR
isTRUE(x | y)

#Assignment Operators
#Local environment
a = 5
a <- 5

#Global environment
a <<- 5

#Vector
vec <- c(1, 2, 3, 4, 5)
vec
class(vec)

r <- c("a", "b", "c", "d")
r
class(r)


gender <- c(0, 1, 0, 1)
gender
class(gender)

#factor
Gender <- factor(gender, c(0, 1), c("Male", "Female"))
Gender
class(Gender)

#List
p <- c(1, 2, 3) #Vector
q <- "green" #Character
r <- 21 #Numeric
p
q
r

Data <- list(p, q, r)
Data
class(Data)

#matrix
#Filling row by row
matrix1 <- matrix(c(1, 2, 3, 4), nrow = 2, ncol = 2, byrow = TRUE)
matrix1
class(matrix1)

#Filling column by column
matrix2 <- matrix(c(1, 2, 3, 4), nrow = 2, ncol = 2, byrow = FALSE)
matrix2

#data frame
height <- c(12, 13, 56, 47)
weight <- c(14, 23, 5, 89)

dataset <- data.frame(height, weight)
dataset


