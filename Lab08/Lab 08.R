getwd()

setwd("C:\\Users\\HP\\OneDrive\\Documents\\GitHub\\R-Labs\\Lab08")

nicotine <- read.table("Data - Lab 8.txt", header = TRUE)
nicotine

fix(nicotine)

#change data structure as Horizontal way
nicotine <- nicotine[[1]]
nicotine

#Q1
mean(nicotine)
var(nicotine)
sd(nicotine)

#Q2
sam <- sample(nicotine, 5)
sam

samples <- c()
n <- c()

for(i in 1:30) {
  s <- sample(nicotine, 5)
  samples <- cbind(samples, s)
  n <- c(n, paste('S', i))
}
colnames(samples) <- n
samples

s.means <- colMeans(samples)
s.means

s.vars <- apply(samples, 2, var)
s.vars

#Q3
mean(s.means)
var(s.means)

#Q4
nicMean <- mean(nicotine)
sMean <- mean(s.means)
meanDiff <- nicMean - sMean
meanDiff
#So, approximately equal

#Q5
var(nicotine)
var(s.means)
#Two values are not equal. Sample size is too small

