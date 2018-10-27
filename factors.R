#factors
gender=sample(c('m','f'), size = 20,replace = T)# no order
summary(gender)
genderF=factor(gender)
summary(genderF)
genderF
(likscale=sample(c('Ex','good','satisfied','poor'),size = 20,replace = T))
summary(likscale)
class(likscale)
likscaleF=factor(likscale)
summary(likscaleF)
class(likscaleF)
likscaleDF=factor(likscale,ordered = T,levels = c('poor','satisfied','good','Ex'))#likerdscel have specific order
likscaleDF
summary(likscaleDF)
barplot(table(likscaleF),col=1:4)
barplot(table(likscaleDF),col=1:4)#order we needed
