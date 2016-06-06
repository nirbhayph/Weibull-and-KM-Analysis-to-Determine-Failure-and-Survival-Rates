mydatatry2<- read.csv("C:/Users/Nirbhay Pherwani/Desktop/ss.csv")
attach(mydatatry2)
# Define variables
time <- Spell
event <- event
z <- cbind(Failure.Code,Model.Family.Desc)
group <- Model.Family.Desc
# Descriptive statistics
summary(time)
summary(event)
summary(z)
summary(group)
library(survival)
# Kaplan-Meier non-parametric analysis
kmsurvival <- survfit(Surv(time,event) ~ 1)
summary(kmsurvival)
plot(kmsurvival, xlab="Time", ylab="Survival Probability" ,col=3)
# End of Kaplan-Meier non-parametric analysis
# Kaplan-Meier non-parametric analysis by group
kmsurvival1 <- survfit(Surv(time, event) ~ group)
summary(kmsurvival1)
plot(kmsurvival1, xlab="Time", ylab="Survival Probability",col=2:7)
# End of Kaplan-Meier non-parametric analysis by group
# Nelson-Aalen non-parametric analysis
nasurvival <- survfit(coxph(Surv(time,event)~1), type="aalen")
summary(nasurvival)
plot(nasurvival, xlab="Time", ylab="Survival Probability", col=4)
# End of Nelson-Aalen non-parametric analysis
# Weibull Survival Analysis
survreg(Surv(time,event)~ group, dist='weibull') -> out.weib
summary(out.weib)
curve(pweibull(x, scale=exp(coef(out.weib)[1]),shape=1/out.weib$scale,lower.tail = FALSE), from=0, to=12, ylab="Survival ",xlab="months",axes=F)
axis(1,cex.axis=.8)
axis(2,cex.axis=.8)
box()
curve(pweibull(x, scale=exp(coef(out.weib)[1]+ coef(out.weib)[2]), shape=1/out.weib$scale,lower.tail FALSE), from=0, to=12,add=T,col=2)
curve(pweibull(x, scale=exp(coef(out.weib)[1]+coef(out.weib)[3]), shape=1/out.weib$scale, lower.tail FALSE), from=0, to=12, add=T,col=3)
curve(pweibull(x, scale=exp(coef(out.weib)[1]+coef(out.weib)[4]), shape=1/out.weib$scale, lower.tail FALSE), from=0, to=12, add=T,col=4)
curve(pweibull(x, scale=exp(coef(out.weib)[1]+coef(out.weib)[5]), shape=1/out.weib$scale, lower.tail FALSE), from=0, to=12, add=T,col=5)
curve(pweibull(x, scale=exp(coef(out.weib)[1]+coef(out.weib)[6]), shape=1/out.weib$scale, lower.tail FALSE), from=0, to=12, add=T,col=6)
legend('right',paste('Scorpio',1:6), col=1:6, lty=1, cex=.8, bty='n')
#End of Weibull Survival Analysis
#Weibull Failure Analysis
curve(pweibull(x, scale=exp(coef(out.weib)[1]),shape=1/out.weib$scale), from=0, to=12, ylab="Failure",xlab="months",axes=F)
axis(1,cex.axis=.8)
axis(2,cex.axis=.8)
box()
curve(pweibull(x, scale=exp(coef(out.weib)[1]+ coef(out.weib)[2]), shape=1/out.weib$scale), from=0,to=12,add=T,col=2)
curve(pweibull(x, scale=exp(coef(out.weib)[1]+coef(out.weib)[3]), shape=1/out.weib$scale), from=0,to=12, add=T,col=3)
curve(pweibull(x, scale=exp(coef(out.weib)[1]+coef(out.weib)[4]), shape=1/out.weib$scale), from=0,to=12, add=T,col=4)
curve(pweibull(x, scale=exp(coef(out.weib)[1]+coef(out.weib)[5]), shape=1/out.weib$scale), from=0,to=12, add=T,col=5)
curve(pweibull(x, scale=exp(coef(out.weib)[1]+coef(out.weib)[6]), shape=1/out.weib$scale), from=0,to=12, add=T,col=6)
legend('right',paste('Scorpio',1:6), col=1:6, lty=1, cex=.8, bty='n')
#End of Weibull Failure Analysis
#Weibull Density
curve(dweibull(x, scale=exp(coef(out.weib)[1]),shape=1/out.weib$scale), from=0, to=16, ylab="Density",xlab="months",axes=F)
axis(1,cex.axis=.8)
axis(2,cex.axis=.8)
box()
curve(dweibull(x, scale=exp(coef(out.weib)[1]+ coef(out.weib)[2]), shape=1/out.weib$scale), from=0,to=16,add=T,col=2)
curve(dweibull(x, scale=exp(coef(out.weib)[1]+coef(out.weib)[3]), shape=1/out.weib$scale), from=0,to=16, add=T,col=3)
curve(dweibull(x, scale=exp(coef(out.weib)[1]+coef(out.weib)[4]), shape=1/out.weib$scale), from=0,to=16, add=T,col=4)
curve(dweibull(x, scale=exp(coef(out.weib)[1]+coef(out.weib)[5]), shape=1/out.weib$scale), from=0,to=16, add=T,col=5)
curve(dweibull(x, scale=exp(coef(out.weib)[1]+coef(out.weib)[6]), shape=1/out.weib$scale), from=0,to=16, add=T,col=6)

legend('right',paste('Scorpio',1:6), col=1:6, lty=1, cex=.8, bty='n')
#End of Weibull Density
