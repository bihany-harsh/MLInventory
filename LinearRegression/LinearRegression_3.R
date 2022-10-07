#!/usr/bin/env Rscript
library(MASS)
library(ISLR2)
head(Boston)

#First a Simple Regression Model

#medv -Response Variable 
#lstat -Predictor Variable

lm.fit = lm(medv ~ lstat, data=Boston)
#to see intercept and slope
lm.fit  
#for more detailed info
# summary(lm.fit)

#to see what other info is available
# names(lm.fit)

#confidence interval
# confint(lm.fit)

#predict() function can be used to produce cnfidence intervals
#and prediction intervals for the fitted model
predict(lm.fit, data.frame(lstat=(c(5,10,15))), interval="confidence")
#for eg: he 95 % confidence interval associated with a lstat value of 10 is (24.47, 25.63)

#plotting 
plot(Boston$lstat, Boston$medv, pch=20, color="blue")
# plot(lstat, medv, data=Boston)
abline(lm.fit, col="red", lwd=3)

#plotiing the four diagnostic plots
par(mfrow=c(2,2))
plot(lm.fit)