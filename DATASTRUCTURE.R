# DATA STRUCURE IN SLIDES
#control+enter foe execution

# vectors
x=1:10 #create seq of nos
x
x1 <- 1:20
x1
(x1=1:30)
x1
(x2=c(1,2,13,4,5))
class(x2)
x2a=c(2L,4L,7L)#L IS FOR INTEGERS
class(x2a)
x2b=c(2,4,7)
class(x2b)
(x3=letters[1:10])
class(x3)
LETTERS[1:26]
LETTERS[seq(1,26,2)]
(X3b = c('a',"rashique", "4"))
class(X3b)
(x4=c(T,FALSE,TRUE,T,F))
class(x4)
x5=c(3L,5L)
class(x5)
x5a=c(3,5)
# access elements
(x6=seq(0,100,3))
ls()#variables in my environmrnt
x6
length(x6)
x6[20]
x6[c(2,4)] #acess 2nd 4th elemnt
x6[seq(1, length(x6),2)]
x6[-1]
x6[-c(1:10, 15:20)]
x6[c(2,-4)]# cannot mix postive and negative integers
x6[c(2,4,3.54)]#reak numbers are truncated to inteders
x6
length(x6)
x6[-(length(x6)-1)]
(x7= c(x6,x2))
#sort
set.seed(123)#same pattern for  evertime
(x6= sample(1:20))
sort(x6)
sort(x6[-c(1,2)])#remove first and second elemnet of x6
sort(x6, decreasing = T)
rev(x6)

(x= -3:2)
(x=1:10)
#x[2]<- 10: x
x<5
x[x<4 | x>6]
x[x<4 | x>6]=100
x
length(x[x==100])
#matrics

(m1 =matrix(100:111, nrow=4))
(m2 =matrix(100:111 ,ncol=3 ,byrow = T))
x=101:124
length(x)
m3=matrix(x, ncol=6)
class(m3)
attributes(m3)
dim(m3)
m3
m1
m1[1,]#first row
m1[,1]#first column
m1[1,2:3]
m1[c(1,3),]#first and third row all columns
m1[-c(1,3),]#exclude first and third row
m1
#rename colums and rows
paste("C","D", sep = " ")
paste("c",1:100,sep = " ")
(colnames(m1)= paste("c",1:3,sep = " "))
(rownames(m1)=paste("R",1:4,sep = " "))
m1
attributes(m1)
colSums(m1)
rowSums(m1)
colMeans(m1)
rowMeans(m1)
t(m1)
m1
sweep(m1, MARGIN = 1, STATS = c(2,3,4,5),FUN = "+")#ROWWISE
sweep(m1, MARGIN = 2, STATS = c(2,3,4), FUN="*" ) 
#vectors to matrix
(m3 = 1:24)
dim(m3)= c(6,4)
m3
#acess elements
m2
m2[1:5]
m2[c(1,2),c(2,3)]
m2[c(TRUE,F,T,F),c(F, T, T)] 
m2[m2 > 5 & m2 < 10]
#modify Vector
m2
m2[2,2]
m2[2,2] = 10
m2
m2[m2> 10] = 99
m2
rbind(m2, c(50,60,70))
m2
cbind(m2, c(55,65,75,85))
rbind(m2,m2)

m2
#ADDMARGINS
?addmargins
m1
addmargins(m1,margin =1,sum)#col wise function
rbind(m1,colSums(m1))
addmargins(m1 ,2, mean)#rowwise function
round(addmargins(m1,1,sd),2)# col wise function
addmargins(m1,c(1,2),mean)#row & col wise function
addmargins(m1,c(1,2),list(list(mean,sum,max),list(var,sd)))
#dataframe
#create vectors to be combined into df
(rollno = 1:30)
(sname= paste('student',1:30,sep =''))
(gender = sample(c('M','F'), size = 30, replace = T, prob = c(.7,.3)))
(marks= floor(rnorm(30,mean = 50,sd=10)))
(marks2= ceiling(rnorm(30,40,5)))
(course =sample(c('BBA','MBA','B.TECH'),size = 30,replace = T,prob = c(.5,.4,.1)))
rollno; sname;gender
marks ;marks2;course
 

#create df
df1=data.frame(rollno,sname, gender, marks, marks2,course,stringsAsFactors = F)
df1
class(df1)
head(df1)#top 6 rows
tail(df1)#last 6 rows


str(df1)# structure of data
head(df1,n=3)# top 3 rows
summary(df1)
df1$gender= factor(df1$gender)
df1$course=factor(df1$course)
str(df1)
summary(df1)
df1$gender# one columns
df1$course
df1[1:10,]#select 1 to 10 rows, all colums
df1[ , c(2,4)] #multiple columns

#as per condition
df1[marks>50 & gender=='F', c('rollno','sname','gender','marks')]
df1[marks>50 & gender=='F', c(1,2)]
df1[marks>50 |gender=='F',] 

df1[marks > 50 & course == 'MBA' & gender == 'F',]
names(df1)
dim(df1)
aggregate(df1$marks,by=list(df1$gender), FUN=max)
aggregate(marks ~ gender, data=df1, FUN=max)

aggregate(marks2 ~ gender, data = df1, FUN=mean)
