#load libraries
library(rpart)
library(rpart.plot)
gender=sample(c('m','f'),size=10000,prob=c(.6,.4),replace = T)
age=ceiling(rnorm(10000,35,5))
buy=sample(c('YES','NO'),size=10000,prob=c(.5,.5),replace = T)
df=data.frame(buy,age,gender)
head(df)
dtree1=rpart(buy~gender+age ,data=df,minsplit=10,cp=0.555)#cp=.005 rpart=decisison tree trying to predict buy using gender and age cp=complexity paramter(-1=fully grown tree)so i don't wantbig tree  so cp=0.005 minsplit says if  observation is less than 10 don't split so use last one as leaf 
dtree1
dtree1$variable.importance
rpart.plot(dtree1,cex = .8,nn=T)