#simple linear regression =women
#save slr_women.r
women
head(women)
names(women)
cor(women)
cov(women$height,women$weight)
cor(women$height,women$weight)
pairs(women)#it tells relationship between x and y viceversa
pairs(mtcars[1:5])
fit1=lm(weight ~ height,data=women)#lm is linear regression weight versus height
summary(fit1)
