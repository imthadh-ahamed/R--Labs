#Q1: Set the working directory
setwd("C:\\Users\\HP\\OneDrive\\Documents\\GitHub\\R-Labs\\Lab04")

#Get the working directory
getwd()

data <- read.table("DATA 4.txt", header = TRUE, sep = " ")
data

#Adding modification
attach(data)

#Q2
data$X3

#Create histogram
hist(X3, main = "Histogram of Years", xlab = "Years", ylab = "Frequencies")
abline(h=0)

#Stem-Leaf Plot
stem(X3)

#Mean of the X3
mean(X3)

#Median of the X3
median(X3)

#Standard Deviation
sd(X3)

summary(X3)
quantile(X3)

#Getting second and third quantile value
quantile(X3)[2]
quantile(X3)[3]

#IQR = Q3 - Q1
IQR(X3)
iqr <- quantile(X3)[4] - quantile(X3)[2]
iqr


#Que 03
table(X3)

max(table(X3))


mod <- function(x){
  fre <- table(x)
  names(fre[fre == max(fre)])
}
mod(X3)

