#Get the working directory
getwd()

#Set the working directory
setwd("C:\\Users\\HP\\OneDrive\\Documents\\GitHub\\R-Labs\\Lab02")

#Import data set
val = read.csv("DATA 2.csv", header = TRUE)
val

#Get data in the editor
fix(val)

#if condition
x = 4
if(x > 0){
  print("Positive Number")
}

#if-else condition
if(x < 0){
  print("Negative number")
} else {
  print("Positive number")
}

#Nested if condition
y <- 0
if(y < 0){
  print("Negative number")
} else if(y == 0){
  print("Equal to Zero")
} else{
  print("Positive number")
}


#While loop
i <- 1
while(i < 6){
  print(i)
  i = i + 1
}


#for loop
for(i in 1:10){
  print(i)
}



#csv and text file
data1 <- read.csv("DATA 2.csv")
fix("data1")
data1

data2 <- read.table("DATA2.txt", header = TRUE, sep = ",")
data2
fix("data2")


#Q1
compute_real_roots <- function(a, b, c) {
  discriminant <- b^2 - 4*a*c
  
  if (discriminant > 0) {
    root1 <- (-b + sqrt(discriminant)) / (2*a)
    root2 <- (-b - sqrt(discriminant)) / (2*a)
    return(c(root1, root2))
  } else if (discriminant == 0) {
    root <- -b / (2*a)
    return(root)
  } else {
    return(NULL)  # No real roots
  }
}

# Example usage
a <- 1
b <- -3
c <- 2
roots <- compute_real_roots(a, b, c)
print("Real roots:", roots)

