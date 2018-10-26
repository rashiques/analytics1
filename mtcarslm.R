mtcars
names(mtcars)
fit2=lm(mpg~wt,data=mtcars)# finding mpg according to weight
range(mtcars$wt)
#predict mpg for wt=2 ,3
(new=data.frame(wt=c(2,3)))
p1=predict(fit2,newdata = new)
p1
cbind(new,p1)
plot(fit2)

