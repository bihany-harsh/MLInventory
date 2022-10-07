#!/usr/bin/env Rscript
library(MASS)
library(ISLR2)

library(ggplot2)
head(Boston)

#First a Multiple Regression Model

#medv -Response Variable 

lm.fit <- lm(medv ~ lstat + age, data=Boston) #for two predictors
summary(lm.fit)

#for all predictors
lm.fit <- lm(medv ~ ., data=Boston)
summary(lm.fit)

#for all predictors except some
lm.fit1 <- lm(medv ~ . - age -indus, data=Boston)
summary(lm.fit1)