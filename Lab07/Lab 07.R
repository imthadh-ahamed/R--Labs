#1
#Q1
X ~ Bin(44, 0.92)

#Q2
dbinom(40, 44, 0.92)

#Q3
pbinom(35, 44, 0.92)

#Q4 P(X >= 38) = 1 - P(X < 37)
1 - pbinom(37, 44, 0.92)

#Q5 40 -- 42 --> P(42 ----X ---- 39)
pbinom(42, 44, 0.92) - pbinom(39, 44, 0.92)

#2
#Q1
dpois(6, 4.5)

#Q2
ppois(6, 4.5, lower.tail = FALSE)

#3
#Q1
pexp(3, rate = 1/2)

#Q2
pexp(4, rate = 1/2, lower.tail=FALSE)

#Q3
pexp(4, rate = 1/2) - pexp(2, rate = 1/2)


#4
#Q1
1 - pnorm(37.9, 36.8, 0.4)

#Q2
pnorm(36.9, 36.8, 0.4) - pnorm(36.4, 36.8, 0.4)

#Q3
qnorm(0.012, 36.8, 0.4)

#Q4
qnorm(0.99, 36.8, 0.4)
