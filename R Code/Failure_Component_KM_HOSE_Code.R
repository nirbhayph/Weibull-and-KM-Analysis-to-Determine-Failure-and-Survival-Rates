mydata14<- read.csv("C:/Users/Nirbhay Pherwani/Desktop/sample44.csv")

attach(mydata14)
# Define variables
time <- Month.No
event <- event
# Descriptive statistics
summary(time)
summary(event)
library(survival)
# Kaplan-Meier non-parametric analysis
kmsurvival <- survfit(Surv(time,event) ~ 1 , data=mydata14)
summary(kmsurvival)
par(las=2) # make label text perpendicular to axis
barplot((kmsurvival$n.event) ,xlab="Month", ylab="HOSE STRG PUMP TO GEAR FAILURE" ,col="orange",names.arg=c("January", "February", "March", "April", "May", "June","July","August","September","October","November","December"), cex.names=0.7)
par(las=2) # make label text perpendicular to axis
plot((kmsurvival$n.event) ,xlab="Month", ylab="HOSE STRG PUMP TO GEAR FAILURE" ,col="darkgreen",xaxt="n")
axis(1, at=1:12, labels=month.name)
lines((kmsurvival$n.event) ,xlab="Month", ylab="HOSE STRG PUMP TO GEAR FAILURE", col="orange")
# End of Kaplan-Meier non-parametric analysis
