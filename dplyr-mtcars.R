#analysis of datsets  mtcars using dplyr
#filename : dplyr-mtcaRS.R

library(dplyr)
?mtcars
mtcars
str(mtcars)#structure of data frame
dim(mtcars)
names(mtcars)#column name
rownames(mtcars)#row name
summary(mtcars)#summary of dataset
#summary activities on mtcars
t1=table(mtcars$am)#number of automatic(0) and mannual(1)
t1
pie(t1)
pie(t1, labels=c('Auto','manual'))
t2=table(mtcars$gear)
t2
pie(t2,labels = c('3 gear','4 gear','5 gear'))
barplot(t2)
barplot(t2,col = 1:3, horiz = T) #colour
barplot(t2,col =c('blue','green','yellow'),xlab='gear',ylab='no of cars', ylim =c(0,20))#ylim means limiting y axis from 1 to 20
title(main = 'distribution of gears of cars', sub = 'no of gears')
#using dplyr %>% is chaining function
mtcars %>% select(mpg) %>% slice(1:5)#first five car mpg slice is for row select for colum
mtcars
mtcars %>% select(mpg,gear) %>% slice(c(1:5, 10))# 1 to5 rows then 10 row
mtcars %>% arrange(mpg)#assending order of milege 
mtcars %>% arrange(am, desc(mpg)) %>% select(am,mpg) # selecting am mpg first assending am then descending mpg according to each am
mtcars %>% mutate(rn= rownames(mtcars)) %>% select(am,mpg)# mutate for adding new column for rownames
mtcars %>% sample_n(3)# randomly select 3 rows
mtcars %>% sample_frac(.2)# randomly select 20% rows
mtcars %>% select(sample(x=c(1:11),size=2)) %>% head
mtcars %>% mutate(newmpg= mpg*1.1)# new column for newmpg
#or
mutate(mtcars, newmpg=mpg*1.2)
# type of transision  and mean of mpg
mtcars %>% group_by(am) %>% summarise(mean(mpg))
mtcars %>% group_by(am) %>% summarise( MEANMPG=mean(mpg))

mtcars %>% group_by(am) %>% summarise( MEANMPG=mean(mpg), MAXhp= max(hp), minwt=min(wt))
mtcars %>% group_by(am) %>% summarise( MEANMPG=mean(mpg), median=median(wt))


