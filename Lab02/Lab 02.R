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
