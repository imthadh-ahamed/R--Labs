getwd() 
setwd("C:\Users\HP\OneDrive\Documents\GitHub\R-Labs\Lab05") 
getwd() 

data<-read.table("data.txt", header = TRUE, sep = ",") 
fix("data") 
data 

#rename colomns 
names(data)<-c("X1","X2") 
fix("data") 
attach(data) 

#q1 - histogram 
hist(X2, main= "Histogram for number od shareholders" , xlab = "no of share 
holders") 

#q2 - Draw a histogram using seven classes where the lower limit is 130 and an upper limit of 270 
histogram<-hist(x2, main= "Histogram for number od shareholders" , xlab = "no 
of share holders", breaks = seq(130,270,length=8), right = FALSE) 
#n = number of classes 
#length = n+1 

#Q3 - Construct the frequency distribution for the above specification.  
#1 - Identify the break points 
breaks<-round(histogram$breaks) 
breaks 

#2 - Identify frequencies of each class 
freq<-histogram$counts 
freq 

#3 - Identify mid point of each class 
mids<-histogram$mids 
mids 

#Create a empty vector 
classes<-c() 
for(i in 1:length(breaks)-1){ 
  classes[i]<-paste("[", breaks[i],",", breaks[i+1],"]") 
} 
#set to columns together in single data frame 
cbind(classes=classes, frequency=freq) 

#Q4 - Portray the distribution in the form of a frequency polygon 
#draw in the same plot 
lines(histogram$mids, freq) 
#draw in new plot 
plot(mids,freq, type = "l" , main ="Frequency polygon for number of 
shareholders") 


#Q5 - Portray the distribution in a less-than cumulative frequency polygo 
cum.freq<-cumsum(freq) 
cum.freq 
#empty vector 
new<-c() 
for(i in 1:length(breaks)){ 
  if(i==1){ 
    new[i]=0 
  }else{ 
    new[i]=cum.freq[i-1] 
  } 
} 
plot(breaks,new(),type = "o" , main ="Frequency polygon for number of 
shareholders") 
