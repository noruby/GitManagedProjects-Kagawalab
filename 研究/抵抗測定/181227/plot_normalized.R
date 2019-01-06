png("Resistance_pulse.png", width = 600, height = 500)  # 描画デバイスを開く
XLIM<-c(-1,33)
YLIM<-c(5,50)
TT<-3/(6.03899E-05-2.52597E-05)
data <- read.csv("181227_BaTiO_AS_1-14.csv",skip=9)
plot(data.frame((data[1]-2.89446E-05)*TT,data[2]/(-data[3]/5.4)),xlim=XLIM,ylim=YLIM,log="y",xlab="Time(s)",ylab="Resistance(Ohm)",type="l",col="blue",cex=0.1)
par(new=TRUE) #
legend("topright", col=c("blue"), legend=c("11V"),pch=c(1,1))
dev.off()  

png("Current_pulse.png", width = 600, height = 500)  # 描画デバイスを開く
XLIM<-c(-1,33)
YLIM<-c(0.001,1)
TT<-3/(6.03899E-05-2.52597E-05)
data <- read.csv("181227_BaTiO_AS_1-14.csv",skip=9)
plot(data.frame((data[1]-2.89446E-05)*TT,abs(data[3]/5.4)),xlim=XLIM,ylim=YLIM,log="y",xlab="Time(s)",ylab="Current(A)",type="l",col="blue",cex=0.1)
par(new=TRUE) #
legend("topright", col=c("blue"), legend=c("11V"),pch=c(1,1))
dev.off()  

png("Resistance_Current.png", width = 600, height = 500)  # 描画デバイスを開く
par(oma = c(0, 0, 0, 2))
XLIM<-c(-1,33)
YLIM<-c(5,50)
TT<-3/(6.03899E-05-2.52597E-05)
data <- read.csv("181227_BaTiO_AS_1-14.csv",skip=9)
plot(data.frame((data[1]-2.89446E-05)*TT,data[2]/(-data[3]/5.4)),xlim=XLIM,ylim=YLIM,log="y",xlab="Time(s)",ylab="Resistance(Ohm)",type="l",col="blue",cex=0.1)
par(new=TRUE) #
YLIM<-c(0.001,5)
data <- read.csv("181227_BaTiO_AS_1-14.csv",skip=9)
plot(data.frame((data[1]-2.89446E-05)*TT,abs(data[3]/5.4)),xlim=XLIM,ylim=YLIM,log="y",xlab="",ylab="",type="l",col="red",cex=0.1,axes=FALSE)
mtext("Current(A)",side = 4, line = 3)  # right y label
axis(4)   
box()
legend("topright", col=c("blue","red"), legend=c("Resistance","Current(11V)"),pch=c(1,1))
dev.off()   



#cd Documents/GitManagedProjects-Kagawalab/研究/抵抗測定/
