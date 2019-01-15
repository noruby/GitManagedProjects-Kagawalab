data8 <- read.csv("190109_SnGe6_ch2_pulse8.csv",skip=9)
data9 <- read.csv("190109_SnGe6_ch2_pulse9.csv",skip=9)
T8 <- 5.09425E-05
T9 <- 7.90767E-05
coll <- c("red","black")
legendd <- c("332mA(#8)","375?mA(#9)")

png("Resistance_pulse.png", width = 600, height = 500)  # 描画デバイスを開く
XLIM<-c(-1,8)
YLIM<-c(0,1)
TT<-3/(6.03899E-05-2.52597E-05)
plot(data.frame((data8[1]-T8)*TT,data8[2]/(data8[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="red",cex=0.1,tcl=0.5)
par(new=TRUE) #
plot(data.frame((data9[1]-T9)*TT,data9[2]/(data9[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="Time(s)",ylab="Resistance(Ohm)",type="l",col="black",cex=0.1,tcl=0.5)
legend("topleft", col=coll, legend=legendd,pch=c(1),lty=c(1))
dev.off()  

png("Resistance_pulse_log.png", width = 600, height = 500)  # 描画デバイスを開く
XLIM<-c(-1,8)
YLIM<-c(0.001,1.2)
TT<-3/(6.03899E-05-2.52597E-05)
plot(data.frame((data8[1]-T8)*TT,data8[2]/(data8[3]/5.4)),xlim=XLIM,ylim=YLIM,log="y",xlab="",ylab="",type="l",col="red",cex=0.1,tcl=0.5)
par(new=TRUE) #
plot(data.frame((data9[1]-T9)*TT,data9[2]/(data9[3]/5.4)),xlim=XLIM,ylim=YLIM,log="y",xlab="Time(s)",ylab="Resistance(Ohm)",type="l",col="black",cex=0.1,tcl=0.5)
legend("bottomleft", col=coll, legend=legendd,pch=c(1),lty=c(1))
dev.off()  

png("Current_pulse.png", width = 600, height = 500)  # 描画デバイスを開く
XLIM<-c(-1,8)
YLIM<-c(0.0001,0.5)
TT<-3/(6.03899E-05-2.52597E-05)
plot(data.frame((data8[1]-T8)*TT,abs(data8[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="red",cex=0.1,tcl=0.5)
par(new=TRUE) #
plot(data.frame((data9[1]-T9)*TT,abs(data9[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="Time(s)",ylab="Current(A)",type="l",col="black",cex=0.1,tcl=0.5)
legend("topright", col=coll, legend=legendd,pch=c(1),lty=c(1))
dev.off()  

png("Current_pulse_log.png", width = 600, height = 500)  # 描画デバイスを開く
XLIM<-c(-1,8)
YLIM<-c(0.0001,1.5)
TT<-3/(6.03899E-05-2.52597E-05)
plot(data.frame((data8[1]-T8)*TT,abs(data8[3]/5.4)),xlim=XLIM,ylim=YLIM,log="y",xlab="",ylab="",type="l",col="red",cex=0.1,tcl=0.5)
par(new=TRUE) #
plot(data.frame((data9[1]-T9)*TT,abs(data9[3]/5.4)),xlim=XLIM,ylim=YLIM,log="y",xlab="Time(s)",ylab="Current(A)",type="l",col="black",cex=0.1,tcl=0.5)
legend("topright", col=coll, legend=legendd,pch=c(1),lty=c(1))
dev.off()  

#cd Documents/GitManagedProjects-Kagawalab/研究/抵抗測定/190109/pulse
