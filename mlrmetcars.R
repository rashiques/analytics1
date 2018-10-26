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
