mydata11<- read.csv("C:/Users/Nirbhay Pherwani/Desktop/KM Part ELC.csv")
attach(mydata11)
# Define variables
time <- Month.No
event <- event
# Descriptive statistics
summary(time)
summary(event)
library(survival)
# Kaplan-Meier non-parametric analysis
kmsurvival <- survfit(Surv(time,event) ~ 1 , data=mydata11)
summary(kmsurvival)
par(las=2) # make label text perpendicular to axis
barplot((kmsurvival$n.event) ,xlab="Month", ylab="Electrical Failures" ,col="darkblue",names.arg=c("January", "February", "March", "April", "May","June","July","August","September","October","November","December"), cex.names=0.7)
par(las=2) # make label text perpendicular to axis
plot((kmsurvival$n.event) ,xlab="Month", ylab="Electrical Failures" ,col="red",xaxt="n")
axis(1, at=1:12, labels=month.name)
lines((kmsurvival$n.event) ,xlab="Month", ylab="Electrical Failures", col="darkblue")
# End of Kaplan-Meier non-parametric analysis
