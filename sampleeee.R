signif(3.567334,4)
signif(3.567334,3)
floor(3.4)
ceiling(3.4)
trunc(3.99)
(x=rnorm(100,mean = 60,sd=10))
summary(x)
quantile(x)
quantile(x,seq(0,1,.1))#decile
quantile(x,seq(0,1,.01))#percentile
fivenum(x)
boxplot(x)
stem(x)
abline(h=fivenum(x))
hist(x)

plot(density(x))
abline(v=60,col='red')

