#!/usr/bin/env Rscript
library(MASS)
library(ISLR2)

library(ggplot2)
head(Boston)

#Interaction Terms

#medv -Response Variable 

#interaction terms
lm.fit <- lm(medv ~ lstat * age, data=Boston)
summary(lm.fit)