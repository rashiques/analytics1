#CREATE A LARGE DF AND PARTITION THE DATA IN TO TWO
#CREATE VECTOR OF STUDENTS NAMES:DIVIDE INTO TWO GROUPS
studentname=paste('student',1:1000,sep='')
#group1=60%
#group2=40%
x=101:200
(length(x))
(position=sample(length(x),size = .6*length(x)))
(length(position))
test1=x[position]
test2=x[-position]
test1
test2
# create a large df
sname=paste('student',1:100,sep=' ')
gender=sample(x=c('m','f'),size = 100,replace = T,prob = c(.6,.4))
marks=ceiling(rnorm(100,60,10))
sname
gender
marks
df=data.frame(sname,gender,marks)
length(df)# it is the number of column
head(df)
nrow(df)
table(df$gender)
Position=sample(nrow(df), size =nrow(df)*.4)#no length function for data frame
Position
firstset=df[Position,]
secondset=df[-Position,]
firstset         
secondset
nrow(firstset)
nrow(secondset)
#or
library(caTools)
split=sample.split(df,SplitRatio = .6)
head(split)#IT WILL SAY TRUE FOR DATA IN FIRST SET FALSE FOR DATA IN SECOND SET
nrow(df)
firset=subset(df,split==T)
secondset=subset(df,split==F)
firstset
secondset#dought
nrow(firstset)
nrow(secondset)#dought
#3rd method
library(caret)# actually df having 60% male and female 40% so we are dividing into two set that two set should have 60% male and 40% female
table(df$gender)#number of male and female
prop.table(table(df$gender))#it will dive you in percentage form
(index1=createDataPartition(y=df$gender,p=0.7,list=F))#i have to make propotion of gender is fixed and divide set in 70% and 60% don,t print list wise
length(index1)
(train1=df[index1,])#70% set
(test1=df[-index1,])#30% set
(t1a=table(train1$gender))# number of male and female in train1
prop.table(t1a)#percentage of male and female in train1 it should 60%male 40%female
(t1b=table(test1$gender))
prop.table(t1b)



(sample(200,2,replace =F))#THEY WILL TAKE 1 TO 10 IN THAT TWO NUMBERS IS SELECTED AND NO REPLACEMENT


