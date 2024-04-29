getwd() 

setwd("C:\\Users\\HP\\OneDrive\\Documents\\GitHub\\R-Labs\\Lab06") 
getwd()

#Q1 -Identify the variables and import the given data set into R 
data<-read.table("Forest.txt", header = TRUE, sep =",") 
fix("data") 
data 
attach(data) 

#q2 -  Get the summary of the data set - structure 
str(data) 

#q3 - How many observations are there? 
#517 obs - by looking at summery 

#q4 - What is the maximum and minimum wind speed of this data set 
max(wind) 
min(wind) 

#q5 -  Get five number summary of temperature 
summary(temp) 

#q6 - How many outliers are there in the wind variable? 
boxplot(wind, horizontal = TRUE, outline = TRUE, pch =16) 
#3 outliers 

#q7 - According to the boxplot of wind what kind of a distribution it has? 
#negative skewed distribution 

#q8 - What is the median of temperature? 
median(temp) 

#q9 - What is the mean and standard variation of wind variable? 
mean(wind) 
sd(wind)

#q10 - What is the interquartile range of wind variable?
IQR(wind)

#q11 - How many observations have measured during Friday in August 
# 2 way frequency table for day and variable 
freq<-table(day,month) 
freq
#answer -21 

#q12 - What is the average temperature, during September? 
#avg means mean
sepMonth <- temp[month == "sep"]
mean(sepMonth)
#OR
mean(temp[month=="sep"])

#q13 -  On which day have they measured most observations during month of July? 
count<-table(day[month=="jul"]) 
count
names(count[count==max(count)])