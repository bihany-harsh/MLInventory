#Qualitative Predictors
library(MASS)
library(ISLR2)

head(Carseats)
lm.fit <- lm(Sales ~ . + Income:Advertising + Price:Age, data=Carseats)
summary(lm.fit)

#given a qualitative variable R generates dummy variables automatically
#the dummy variables are called factor variables

attach(Carseats)
contrasts(ShelveLoc)