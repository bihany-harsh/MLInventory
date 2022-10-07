#!/usr/bin/env Rscript
library(MASS)
library(ISLR2)

library(ggplot2)
head(Boston)

#Non-Linear Transformations of the Predictors

#medv -Response Variable 

lm.fit2 <- lm(medv ~ lstat + I(lstat^2), data=Boston)
summary(lm.fit2)

#we use the anova() function to further quatify the extent to which the quadratic fit is superior to the linear fit
lm.fit <- lm(medv ~ lstat, data=Boston)
anova(lm.fit, lm.fit2)

#the Null hypothesis is that the two models fit the data equally well and the alternative hypothesis is that the quadratic fit is superior to the linear fit
#the p-value associated with the F-statistic is 1.99e-16, which suggests that the quadratic fit is superior to the linear fit
par(mfrow=c(2,2))
plot(lm.fit2)

#further extending the non-lineararity
lm.fit5 <- lm(medv ~ poly(lstat, 5), data=Boston)
summary(lm.fit5)