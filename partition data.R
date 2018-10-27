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
(sample(10,2,replace =F))#THEY WILL TAKE 1 TO 10 IN THAT TWO NUMBERS IS SELECTED AND NO REPLACEMENT

