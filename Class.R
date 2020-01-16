bank<-read.csv('E:/bank-full.csv')
bk<-bank[,c("age","balance")]
bk=head(bank,20)
bk=subset(bk,select=-c(default,y))
bk
install.packages("rpart.plot")
library("rpart")
library("rplot.plot")
fit<-rpart(marital~age+job+education+balance+housing+loan+duration,method="class",data=bk,control=rpart.control(minsplit = 1),parms = list(split='information'))
summary(fit)
rpart.plot(fit,type=4,extra=1)
