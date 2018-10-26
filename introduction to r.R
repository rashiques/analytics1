#starting to work in R
# assign
x1 = 3
x2 <- 3
# print values
x1
x2
#assign and print
(x3=3)
#environment
# variable in env
ls()
# datasets avaiable for use
data()
women
?women
?mtcars
mtcars
mt9cars$mpg
attach(mtcars)
mpg
# libaries currently loaded
library()
#elements
ls()
# for removing values from environment
rm(list=ls())
rm(list = ls(all = TRUE))
X1
women
mtcars
data(mtcars)
#help
?mean
y <- c(0:10, 50)
y
print(y)
xm <- mean(y)
xm
c(xm, mean(y, trim = 0.10))
# create values
1:100
seq(0,100, by=2)
seq(1,100, by=2)#odd number
seq(1,10, length.out=5)
rep(1,5)
rep(c(1,4), times=4)
rep(c(1,4), each=4)
rep(c(1,4), times= c(2,6))
x = c(0:10, 50:100)
version
#base command plot
plot(1:10)
#clean console by take cursor to console ctrl+l
Sys.Date()
getwd()
# first create a R file with some content  in current file
source('test1.R')

