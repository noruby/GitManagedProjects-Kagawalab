
#dev.copy2eps(file="RD2.eps", width = 600, height = 500)
png("RD2.png", width = 600, height = 500) 
XLIM<-c(2000,2015)
YLIM<-c(0,550)
data <- read.csv("RD2.csv",header=F)
plot(data.frame(data[1],data[2]),xlim=XLIM,ylim=YLIM,xlab="Year",ylab="Billions of current PPP dollars",type="l",col="blue",cex=3)
par(new=TRUE) #
plot(data.frame(data[1],data[3]),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="green",cex=3)
par(new=TRUE) #
plot(data.frame(data[1],data[4]),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="red",cex=3)
par(new=TRUE) #
plot(data.frame(data[1],data[5]),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="black",cex=3)
par(new=TRUE) #
legend("topright", col=c("blue","green","red","black"), legend=c("US","EU","China","Japan"),pch=c(1,1))
par(new=TRUE) #
dev.off()  

#cd Documents/GitManagedProjects-Kagawalab/研究/抵抗測定/