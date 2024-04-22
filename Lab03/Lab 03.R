#Get working directory
getwd()

#Set the working directory
setwd("C:\\Users\\HP\\OneDrive\\Documents\\GitHub\\R-Labs\\Lab03")

#Import data set
data <- read.csv("DATA 3.csv", header=TRUE)
data

#Get the data in the editor
fix(data)

#Rename columns
names(data) <- c("Age of student", "Gender", "Accomodation")

#After change the names
fix(data)

#Rename categorical data
data$Gender <- factor(data$Gender, c(1, 2), c("Male", "Female"))
fix(data)

#Rename categorical data
data$Accomodation <- factor(data$Accomodation, c(1, 2, 3), c("Stays at Home", "Boarded Students", "Lodging"))
fix(data)

#Adding Modification
attach(data)

#Q2: One-way frequency table
gender.freq <- table(Gender)
gender.freq

accomadation.freq <- table(Accomadation)
accomadation.freq

#Create Pie chart
pie(gender.freq, "Pie chart of Gender")
pie(accomadation.freq, "Pie chart of Accomodation")

#Create bar chart
barplot(gender.freq, main = "Barplot of Gender", xlab = "Gender", ylab = "Frequency")
abline(h=0)

barplot(accomadation.freq, main = "Barplot of Accomodation", xlab = "Accomodation categories", ylab = "Frequency")
abline(h=0)

#Q3: Two way frequency table
gender_acc.freq <- table(Gender, Accomadation)
gender_acc.freq

#Stack bar chart
barplot(gender_acc.freq, main = "Gender and Accomadation", legend = rownames(gender_acc.freq))
abline(h=0)

#Clustered bar chart
barplot(gender_acc.freq, beside = TRUE, main = "Gender and Accomadation", legend = rownames(gender_acc.freq))
abline(h=0)


#Q4:  Box plot
boxplot(Age~Gender, main = "Boxplot for Gender", xlab = "Frequency", ylab = "Gender", horizontal = TRUE)
boxplot(Age~Accomadation, main = "Boxplot for Accomadation", xlab = "Accomadation", ylab = "Gender", outpch = 100)

#Q5
xtabs(Age~Gender+Accomadation)/gender_acc.freq

