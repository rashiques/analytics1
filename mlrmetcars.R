# how to find best combination of relevant independent variable from lot of independent variable

#https://cran.r-project.org/web/packages/olsrr/olsrr.pdf
#install.packages('olsrr')
library(olsrr)
names(mtcars)
mtcars[c('disp','hp','wt','qsec')]
model <- lm(mpg ~ disp + hp + wt + qsec, data = mtcars)
k <- ols_step_all_possible(model)
plot(k)
k# we will get the table of r squre for all combination in which we are having the highest r square that combination of variable be used as independent variable is hp wt qsec
fit3=lm(mpg~hp+wt+qsec, data=mtcars)
summary(fit3)
#mannual doing each below line so olsrr function make it easy
summary(lm(mpg ~ wt, data=mtcars))
summary(lm(mpg ~ wt+ hp, data=mtcars))
AIC(fit3)# akalke information crieteria which ever give you lesser aic you have to select that
fit4=lm(mpg~ .,data=mtcars)# take all the variable
AIC(fit4)#AIC OF FIT3 IS LESS THAN FIT4 so use fit3
